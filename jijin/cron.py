# -*- coding: utf-8 -*-
# 2020年2月28日10:49:52  基金更新爬虫
import urllib2
from bs4 import BeautifulSoup
from account.models import Account
from models import Jijin
import datetime
import time
import json
# http://fund.eastmoney.com/006113.html
def runJijin():
  with open('/opt/yuantingfei/webapp/jijin/codeList.txt', 'r') as f1:
    codeList = f1.readlines()
    for i in range(0, len(codeList)):
      codeList[i] = codeList[i].rstrip('\n')
  for code in codeList:
    try:
      url = "http://fundf10.eastmoney.com/jdzf_"+code+".html"
      response = urllib2.urlopen(url)
      html_doc = response.read()
      soup = BeautifulSoup(html_doc, "lxml")
      
      red = soup.find_all('b',class_='red lar bold')
      blk = soup.find_all('b',class_='blk lar bold')
      grn = soup.find_all('b',class_='grn lar bold')
      if len(red)==1:
        ztzf =  red[0].text
      elif len(grn)==1:
        ztzf =  grn[0].text
      else:
        ztzf =  blk[0].text
      ztzf =  ztzf.split("(")[1].replace(" )","")

      url ="http://fundgz.1234567.com.cn/js/"+code+".js?rt="+str(time.time()*1000)
      response = urllib2.urlopen(url)
      html_doc = response.read()
      html_doc = html_doc.replace("jsonpgz(","")
      html_doc = html_doc.replace(");","")
      if html_doc == '':
        name = ""
        value = ""
        timeStr = ""
        dqjz = ""
        ztjz = ""
      else:
        obj = json.loads(html_doc)
        name = obj['name']
        value = str(obj['gszzl'])+"%"
        timeStr = obj['gztime']
        dqjz = obj['gsz']
        ztjz = obj['dwjz']
      jijin = Jijin.objects.filter(code=code)
      if len(jijin)==1:
        jijin[0].value = value
        jijin[0].name = name
        jijin[0].timeStr = timeStr
        jijin[0].dqjz = dqjz
        jijin[0].ztjz = ztjz
        jijin[0].ztzf = ztzf
        jijin[0].save()
      else:
        print 'xin zeng'
        jijin = Jijin(code=code,name=name,value=value,timeStr=timeStr,dqjz=dqjz,ztjz=ztjz,ztzf=ztzf)
        jijin.save()
        print jijin.id
        print "id"
        jijin.number = jijin.id
        jijin.save()
    except:
      print code
      print "error........."
  # now_time = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')
  # print "time:"
  # print now_time
    