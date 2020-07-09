# -*- coding:utf-8 -*
from __future__ import unicode_literals

from django.db import models
from django.utils import timezone
# Create your models here.
from django.contrib.auth.models import AbstractBaseUser,UserManager
FIRST = 0
SECOND = 1
LEVEL_CHOICE = [(FIRST, '一级'), (SECOND, '二级')]
IDENTIFY_CHOICE = [(0, '系统管理'), (1, '审计管理'), (2, '安全管理'), (3, '系统业务管理'), (4, '审计业务管理')]
TYPE_CHOICE = [(0, 'xxx'), (1, 'xxx'), (2, 'xxx')]#对应证书模块




class Module(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=200, unique=True)
    url = models.CharField(max_length=200)
    image = models.CharField(max_length=200)
    level = models.IntegerField(choices=LEVEL_CHOICE)
    type = models.IntegerField(choices=TYPE_CHOICE)
    group = models.IntegerField()
    parent = models.IntegerField()
    identity = models.IntegerField(choices=IDENTIFY_CHOICE)
    class Meta:
        db_table = 'v_module'
class Role(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=200, unique=True)
    identity = models.IntegerField(choices=IDENTIFY_CHOICE)
    class Meta:
        db_table = 'v_role'
class Permission(models.Model):
    id = models.AutoField(primary_key=True)
    role = models.ForeignKey(Role)
    module = models.ForeignKey(Module)
    class Meta:
        db_table = 'v_permission'

class Account(AbstractBaseUser):
    id = models.AutoField(primary_key=True)
    username = models.CharField(max_length=50, unique=True)
    name = models.CharField(max_length=50, unique=True)
    email = models.EmailField()
    codes = models.CharField(max_length=500,default="")
    is_active = models.BooleanField(default=True)
    is_only_read = models.BooleanField(default=True)
    date_joined = models.DateTimeField(default=timezone.now)
    effective_time = models.DateTimeField(default=timezone.now)
    telephone = models.CharField(max_length=200,blank=True)
    role = models.ForeignKey(Role)
    is_superuser = models.BooleanField()
    is_staff = models.BooleanField(default=False)
    objects = UserManager()

    USERNAME_FIELD = 'username'
    REQUIRED_FIELDS = ['email','role']
    def __json__(self,):
        return {
            "id":self.id,
            "username":self.username,
            "name":self.name,
            "codes":self.codes,
            "email":self.email,
            "is_active":self.is_active,
            "is_only_read":self.is_only_read,
            "telephone":self.telephone,
            # "effective_time":self.effective_time,
            "role":self.role.name,
        }