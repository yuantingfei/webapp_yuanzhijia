# -*-coding=UTF-8-*-
import logging
from django.shortcuts import render
from rest_framework import status
from rest_framework.decorators import api_view,permission_classes
from rest_framework.permissions import AllowAny
from rest_framework.response import Response
from models import Account,Role,Module
from utils.captcha import create_idcode
from django.contrib.auth import authenticate, login as auth_login, logout as auth_logout
from serializer import ModuleSerializer,RoleSerializer

from rest_framework import mixins
from rest_framework import generics
logger = logging.getLogger('webapp')

import audit

@api_view(['POST'])
@permission_classes((AllowAny,))
def login(request,format=None):
    username = request.data["username"]
    password = request.data["password"]
    print username
    print password
    user = authenticate(username=username, password=password)
    print user
    if user is not None:
        auth_login(request, user)
        request.session['user'] = user.__json__()
        print "222222222222222222222222222222222222222"
        print request.session.items()
        audit.write_info(request,"login","登录成功",user.username)
        return Response({"code":"10000","data":[user.__json__()]}, status=status.HTTP_200_OK)
    else:
        return Response({"code":"10001",'message': '用户名或密码错误'}, status=status.HTTP_200_OK)


@api_view(['POST'])
def changePassword(request,format=None):
    username = request.data["username"]
    old_password = request.data["old_password"]
    new_password = request.data["new_password"]
    user = authenticate(username=username, password=old_password)
    if user is not None:
        account = Account.objects.get(username__exact=username)
        account.set_password(new_password)
        account.save()
        audit.write_info(request,"changePassword","修改密码成功",user.username)
        return Response({"code":"10000","data":[user.__json__()]}, status=status.HTTP_200_OK)
    else:
        return Response({"code":"10006",'message': '旧密码错误'}, status=status.HTTP_200_OK)

@api_view(['POST'])
def logout(request,format=None):
    # role = Role.objects.create(name='name3',identity = 1)
    # role.save()
    # account = Account.objects.create_user("yuantingfei","105@qq.com",name="",password="qwert12345",role = role)
    # account.save()
    # print request.session.items()
    # logger.info("Session is "+request.session.items())
    auth_logout(request)
    print request.session.items()
    return Response({"code":"10000"},status=status.HTTP_200_OK)

@api_view(['GET'])
def isLogin(request,format=None):
    user = request.session.get('user', default=None)
    print user
    if not user is None:
        return Response({"code":"10002","userInfo":user},status=status.HTTP_200_OK)
    else:
        # 正式使用的时候开启路由守卫 换为10003
        # return Response({"code":"10002"},status=status.HTTP_200_OK)
        return Response({"code":"10003"},status=status.HTTP_200_OK)


@api_view(['POST','GET'])
@permission_classes((AllowAny,))
def test(request,format=None):
    print request.session.items()
    return Response({'message': '用户名或密码错误'}, status=status.HTTP_401_UNAUTHORIZED)


@api_view(['GET'])
def AccountList(request,cur,page,format=None):
    start = int(cur)*int(page) - int(page)
    end = int(cur)*int(page)
    accounts =  Account.objects.all()[start:end]
    datalist = []
    for account in accounts:
        datalist.append(account.__json__())
    return Response(datalist, status=status.HTTP_200_OK)

@api_view(['GET'])
def getCode(request,format=None):
    item =  create_idcode(4)
    return Response({"captcha_id":item[0],"ubase64":item[1]}, status=status.HTTP_200_OK)

@api_view(['GET'])
def getAccountById(request,id,format=None):
    try:
        account =  Account.objects.get(id=id)
        return Response(account.__json__(), status=status.HTTP_200_OK)
    except Account.DoesNotExist:
        logger.error(Account.DoesNotExist)
        return Response({'message': '此账号不存在'}, status=status.HTTP_401_UNAUTHORIZED)

@api_view(['POST'])
def insertAccount(request,id,format=None):
    try:
        account =  Account.objects.get(id=id)
        return Response(account.__json__(), status=status.HTTP_200_OK)
    except Account.DoesNotExist:
        logger.error(Account.DoesNotExist)
        return Response({'message': '此账号不存在'}, status=status.HTTP_401_UNAUTHORIZED)
    


class RoleList(generics.ListCreateAPIView):
    queryset = Role.objects.all()
    serializer_class = RoleSerializer


class RoleDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Role.objects.all()
    serializer_class = RoleSerializer

class ModuleList(generics.ListCreateAPIView):
    queryset = Module.objects.all()
    serializer_class = ModuleSerializer


class ModuleDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Module.objects.all()
    serializer_class = ModuleSerializer
