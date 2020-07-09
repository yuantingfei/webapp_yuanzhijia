# -*- coding:utf-8 -*- 

'''
日志表 models
Created on 2018年7月18日

@author: yuantingfei
'''

from django.db import models
LEVEL_CHOICE = [(0, '正常'), (1, '异常')]
class AuditRecord(models.Model):
    """ mapping t_auditrecord """
    id           = models.AutoField(primary_key=True)
    stat_time    = models.DateTimeField('时间')
    module       = models.CharField('功能模块', max_length = 20)
    description  = models.CharField('描述', max_length = 1000)
    source_ip       = models.CharField('客户端IP', max_length = 50)
    account_name    = models.CharField('用户名', max_length = 50)
    level0       = models.IntegerField(default=0,choices=LEVEL_CHOICE)
    def __json__(self,):
        return {
            "id":self.id,
            "stat_time":self.stat_time,
            "module":self.module,
            "description":self.description,
            "source_ip":self.source_ip,
            "account_name":self.account_name,
            "level0":self.level0,
        }
    class Meta:
        db_table = 'v_auditrecord'
