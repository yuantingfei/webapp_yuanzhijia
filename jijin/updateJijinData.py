# -*- coding: utf-8 -*-
# 2020年2月28日10:49:52  基金更新爬虫
import urllib2
from bs4 import BeautifulSoup

import json
import time

import sys
from SQLiteAPI import SQLiteAPI
def updateJijinData():
  url ="http://fund.eastmoney.com/data/FundGuideapi.aspx?dt=0&sd=&ed=&sc=3y&st=desc&pi=1&pn=9000&zf=diy&sh=list&rnd=0.9807213795606142"
  print url
  response = urllib2.urlopen(url)
  html_doc = response.read()
  html_doc = html_doc.replace("var rankData =","")
  obj = json.loads(html_doc)
  print SQLiteAPI
  myApi = SQLiteAPI('/opt/yuantingfei/webapp/webapp/db.sqlite3')

  res3 = myApi.select('v_jijin', cols='code')
 
  for i in obj['datas']:
    tmp = i.split(',')
    for x in res3:
      if x[0] == tmp[0]:
        week = "0"
        if tmp[5]!='':
          week = tmp[5]

        month = "0"
        if tmp[6]!='':
          month = tmp[6]

        month3 = "0"
        if tmp[7]!='':
          month3 = tmp[7]

        month6 = "0"
        if tmp[8]!='':
          month6 = tmp[8]

        overyear = "0"
        if tmp[4]!='':
          overyear = tmp[4]

        year = "0"
        if tmp[9]!='':
          year = tmp[9]

        year2 = "0"
        if tmp[10]!='':
          year2 = tmp[10]

        year3 = "0"
        if tmp[11]!='':
          year3 = tmp[11]

        update_data = {
          "week":week,
          "month":month,
          "month3":month3,
          "month6":month6,
          "overyear":overyear,
          "year":year,
          "year2":year2,
          "year3":year3,
        }
        where = "code='"+tmp[0]+"'"
        res4 = myApi.update('v_jijin', data=update_data, where=where)
        print res4
updateJijinData()