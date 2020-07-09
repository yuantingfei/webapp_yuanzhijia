from django.shortcuts import render
from models import AuditRecord
from rest_framework.decorators import api_view,permission_classes
from rest_framework.response import Response
from rest_framework import status

from django.db.models import Q
# Create your views here.
@api_view(['GET'])
def AuditList(request,format=None):
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
    audits =  AuditRecord.objects.filter(Q(description__contains=key)|Q(source_ip__contains=key)|Q(account_name__contains=key)).order_by('-stat_time')[start:end]
    total =  len(AuditRecord.objects.filter(Q(description__contains=key)|Q(source_ip__contains=key)|Q(account_name__contains=key)))
    datalist = []
    for audit in audits:
        datalist.append(audit.__json__())
    data = {
        "list":datalist,
        "total":total,
    }
    return Response(data, status=status.HTTP_200_OK)