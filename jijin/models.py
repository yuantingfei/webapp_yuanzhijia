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
    dqjz      = models.CharField('value', max_length = 50,default="") #当前净值
    ztjz      = models.CharField('value', max_length = 50,default="") #昨天净值
    ztzf      = models.CharField('value', max_length = 50,default="") #昨天涨幅
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
            "timeStr":self.timeStr,
            "number":self.number,
        }
    class Meta:
        db_table = 'v_jijin'
