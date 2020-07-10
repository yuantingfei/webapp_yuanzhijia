# -*- coding:utf-8 -*- 

'''
jijin models
Created on 2020年2月28日17:27:04

@author: yuantingfei
'''

from django.db import models
class Jijin(models.Model):
    id         = models.AutoField(primary_key=True)
    name       = models.CharField('name', max_length = 100)
    code       = models.CharField('code', max_length = 20)
    value      = models.CharField('value', max_length = 50) #当前涨幅
    dqjz      = models.CharField('dqjz', max_length = 50,default="") #当前净值
    ztjz      = models.CharField('ztjz', max_length = 50,default="") #昨天净值
    ztzf      = models.CharField('ztzf', max_length = 50,default="") #昨天涨幅
    week      = models.CharField('week', max_length = 50,default="") #近一周
    month      = models.CharField('month', max_length = 50,default="") #近一月
    month3      = models.CharField('month3', max_length = 50,default="") #近3月
    month6      = models.CharField('month6', max_length = 50,default="") #近6月
    overyear      = models.CharField('overyear', max_length = 50,default="") #今年以来
    year      = models.CharField('year', max_length = 50,default="") #近1年
    year2      = models.CharField('year2', max_length = 50,default="") #近2年
    year3      = models.CharField('year3', max_length = 50,default="") #近3年
    timeStr    = models.CharField('timeStr', max_length = 50) 
    number    = models.IntegerField('number',default=0) 
    def __json__(self,):
        return {
            "id":self.id,
            "name":self.name,
            "code":self.code,
            "value":self.value,
            "dqjz":self.dqjz,
            "ztjz":self.ztjz,
            "ztzf":self.ztzf,
            "week":self.week,
            "month":self.month,
            "month3":self.month3,
            "month6":self.month6,
            "overyear":self.overyear,
            "year":self.year,
            "year2":self.year2,
            "year3":self.year3,
            "timeStr":self.timeStr,
            "number":self.number,
        }
    class Meta:
        db_table = 'v_jijin'
