# -*-coding=UTF-8-*-
from django.shortcuts import render
from models import Jijin
from account.models import Account
from rest_framework.decorators import api_view,permission_classes
from rest_framework.response import Response
from rest_framework import status
import audit
from django.db.models import Q
# Create your views here.
@api_view(['GET'])
def JijinList(request,format=None):
    user = request.session.get('user', default=None)
    pageIndex = request.GET.get("pageIndex")
    pageRows = request.GET.get("pageRows")
    key = request.GET.get("key")
    if not key:
        key = ""
    if not pageIndex:
        pageIndex = 1
    if not pageRows:
        pageRows = 10
    start = int(pageIndex)*int(pageRows) - int(pageRows)
    end = int(pageIndex)*int(pageRows)
    jijins =  Jijin.objects.filter(Q(name__contains=key)|Q(code__contains=key)).order_by('number')[start:end]
    total =  len(Jijin.objects.filter(Q(name__contains=key)|Q(code__contains=key)))
    datalist = []
    for jijin in jijins:
        datalist.append(jijin.__json__())
    data = {
        "list":datalist,
        "total":total,
    }
    
    # audit.write_info(request,"jijin","查询基金成功","tmp_user")
    return Response(data, status=status.HTTP_200_OK)

@api_view(['POST'])
def addCode(request,format=None):
    code = request.data["code"]
    # account = Account.objects.all()
    # for a in account:
    #   if(code in a.codes):
    #     pass
    #   else:
    #     a.codes = a.codes+","+code
    #     a.save()
    #     break
    f = open('/opt/yuantingfei/webapp/jijin/codeList.txt', 'a') 
    f.write(code+"\n")
    f.close()
    audit.write_info(request,"jijin","addcode:"+code,"tmp_user")
    return Response({"code":"10000","data":[code]}, status=status.HTTP_200_OK)
@api_view(['POST'])
def upList(request,format=None):
    id = request.data["id"]
    jijins =  Jijin.objects.order_by('number')
    for x in range(len(jijins)):
        if jijins[x].id == int(id) and x != 0:
            tmp = jijins[x-1].number
            jijins[x-1].number = jijins[x].number
            jijins[x].number = tmp
            jijins[x-1].save()
            jijins[x].save()
    audit.write_info(request,"jijin","upList","tmp_user")
    return Response({"code":"10000","data":[id]}, status=status.HTTP_200_OK)
@api_view(['POST'])
def downList(request,format=None):
    id = request.data["id"]
    jijins =  Jijin.objects.order_by('number')
    for x in range(len(jijins)):
        if jijins[x].id == int(id) and x != len(jijins)-1:
            tmp = jijins[x+1].number
            jijins[x+1].number = jijins[x].number
            jijins[x].number = tmp
            jijins[x+1].save()
            jijins[x].save()
    audit.write_info(request,"jijin","downList","tmp_user")
    return Response({"code":"10000","data":[id]}, status=status.HTTP_200_OK)