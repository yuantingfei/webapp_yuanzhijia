# -*-coding=UTF-8-*-
from django.utils import timezone

_export_ = ['write_info','write_alert','write_error']

def write(request,module,description,account_name,level0):
    try:
        from models import AuditRecord
        record = {
            'stat_time' : timezone.now(),
            'source_ip'    : request.META['REMOTE_ADDR'],
            'module'    : module,
            'description'  : description,
            'account_name' : account_name,
            'level0' : level0
        }
        AuditRecord(**record).save()
    except Exception,e:
        print e
#信息日志
def write_info(request,module,description,account_name):
    try:
        from models import AuditRecord
        record = {
            'stat_time' : timezone.now(),
            'source_ip'    : request.META['REMOTE_ADDR'],
            'module'    : module,
            'description'  : description,
            'account_name' : account_name,
            'level0' : 0
        }
        AuditRecord(**record).save()
    except Exception,e:
        print e
#告警日志
def write_alert(request,module,description,account_name):
    try:
        from models import AuditRecord
        record = {
            'stat_time' : timezone.now(),
            'source_ip'    : request.META['REMOTE_ADDR'],
            'module'    : module,
            'description'  : description,
            'account_name' : account_name,
            'level0' : 1
        }
        AuditRecord(**record).save()
    except Exception,e:
        print e
#错误日志
def write_error(request,module,description,account_name):
    try:
        from models import AuditRecord
        record = {
            'stat_time' : timezone.now(),
            'source_ip'    : request.META['REMOTE_ADDR'],
            'module'    : module,
            'description'  : description,
            'account_name' : account_name,
            'level0' : 2
        }
        AuditRecord(**record).save()
    except Exception,e:
        print e