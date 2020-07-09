# -*- coding: utf-8 -*-
# 2020年2月28日10:49:52  基金更新爬虫
import urllib2
from bs4 import BeautifulSoup
import datetime
import time
import json
def runJijin():
  with open('test.txt', 'r') as f1:
    codeList = f1.readlines()
    for i in range(0, len(codeList)):
      codeList[i] = codeList[i].rstrip('\n')
      print codeList[i]
  for code in codeList:
    url = "http://fundf10.eastmoney.com/jdzf_"+code+".html"
    response = urllib2.urlopen(url)
    html_doc = response.read()
    soup = BeautifulSoup(html_doc, "lxml")
    
    red = soup.find_all('b',class_='red lar bold')
    if len(red)==1:
      ztzf =  red[0].text
    else:
      grn = soup.find_all('b',class_='grn lar bold')
      ztzf =  grn[0].text
    ztzf =  ztzf.split("(")[1].replace(" )","")

    url ="http://fundgz.1234567.com.cn/js/"+code+".js?rt="+str(time.time()*1000)
    response = urllib2.urlopen(url)
    html_doc = response.read()
    html_doc = html_doc.replace("jsonpgz(","")
    html_doc = html_doc.replace(");","")
    obj = json.loads(html_doc)
    name = obj['name']
    value = str(obj['gszzl'])+"%"
    timeStr = obj['gztime']

    dqjz = obj['dwjz']
    ztjz = obj['gsz']
    # ztzf = ""

    print ztjz
  
  now_time = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')
  print "time:"
  print now_time

# runJijin()
f = open('/opt/yuantingfei/webapp/jijin/codeList.txt', 'a') 
f.write("sss\n")
f.close()
    