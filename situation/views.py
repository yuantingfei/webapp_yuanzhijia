# -*- coding:utf-8 -*
from django.shortcuts import render
from rest_framework.decorators import api_view,permission_classes
from rest_framework.response import Response
from rest_framework import status

from django.db.models import Q
# Create your views here.
@api_view(['GET'])
def StatisticsList(request,format=None):
    data = {
        "msg": "成功",
        "data": {
            "safeNodeNum": 1,
            "lowRiskNodeNum": 4,
            "mediumRiskNodeNum": 0,
            "highRiskNodeNum": 1,
            "veryHighRiskNodeNum": 0,    
            "offLineNodeNum": 0,        
            "onlineNodeNum": 5,
            "percentage": 100.00
        }
    }
    return Response(data, status=status.HTTP_200_OK)
@api_view(['GET'])
def Top5(request,format=None):
    data = {
        "msg": "成功",
        "data": {
            "safeTop5": [
                {
                    "id": 16,
                    "nodeId": "node1",
                    "nodeName": "节点1",
                    "safeValue": "98.0",
                    "safeLevel": "1"
                },
                {
                    "id": 13,
                    "nodeId": "node5",
                    "nodeName": "本级节点",
                    "safeValue": "80.0",
                    "safeLevel": "2"
                },
                {
                    "id": 12,
                    "nodeId": "node4",
                    "nodeName": "节点4",
                    "safeValue": "76.0",
                    "safeLevel": "2"
                },
                {
                    "id": 14,
                    "nodeId": "node6",
                    "nodeName": "节点6",
                    "safeValue": "55.0",
                    "safeLevel": "2"
                },
                {
                    "id": 11,
                    "nodeId": "node3",
                    "nodeName": "节点3",
                    "safeValue": "52.0",
                    "safeLevel": "2"
                }
            ],
            "assetHighRiskNumTop5": [
                {
                    "id": 14,
                    "nodeId": "node6",
                    "nodeName": "节点6",
                    "assetNumVh": "16"            
                },
                {
                    "id": 13,
                    "nodeId": "node5",
                    "nodeName": "本级节点",
                    "assetNumVh": "11"
                },
                {
                    "id": 11,
                    "nodeId": "node3",
                    "nodeName": "节点3",
                    "assetNumVh": "5"
                },
                {
                    "id": 12,
                    "nodeId": "node4",
                    "nodeName": "节点4",
                    "assetNumVh": "4"
                },
                {
                    "id": 16,
                    "nodeId": "node1",
                    "nodeName": "节点1",
                    "assetNumVh": "4"
                }
            ],
            "alarmHighUndealTop5": [
                {
                    "id": 14,
                    "nodeId": "node6",
                    "nodeName": "节点6",
                    "alarmHUndeal": "4"
                },
                {
                    "id": 13,
                    "nodeId": "node5",
                    "nodeName": "本级节点",
                    "alarmHUndeal": "3"
                },
                {
                    "id": 11,
                    "nodeId": "node3",
                    "nodeName": "节点3",
                    "alarmHUndeal": "1"
                },
                {
                    "id": 12,
                    "nodeId": "node4",
                    "nodeName": "节点4",
                    "alarmHUndeal": "0",
                },
                {
                    "id": 15,
                    "nodeId": "node2",
                    "nodeName": "节点2",
                    "alarmHUndeal": "0"
                }
            ]
        }
    }
    return Response(data, status=status.HTTP_200_OK)
@api_view(['GET'])
def LatestAlarms(request,format=None):
    data = [
	    {
		    "timestamp": "2019-11-25 23:30:41",
		    "alarmName":"AI模型检测到VPN账号【zhangli】异常登录",
		    "nodeName":"青海分公司",
		    "alarmLevel":"高危"
        },
	    {
		    "timestamp": "2019-11-25 23:30:41",
		    "alarmName":"AI模型检测到VPN账号【zhangli】异常登录",
		    "nodeName":"青海分公司",
		    "alarmLevel":"高危"
        },
	    {
		    "timestamp": "2019-11-25 23:30:41",
		    "alarmName":"AI模型检测到VPN账号【zhangli】异常登录",
		    "nodeName":"青海分公司",
		    "alarmLevel":"高危"
        },
	    {
		    "timestamp": "2019-11-25 23:30:41",
		    "alarmName":"AI模型检测到VPN账号【zhangli】异常登录",
		    "nodeName":"青海分公司",
		    "alarmLevel":"高危"
        },
	    {
		    "timestamp": "2019-11-25 23:30:41",
		    "alarmName":"AI模型检测到VPN账号【zhangli】异常登录",
		    "nodeName":"青海分公司",
		    "alarmLevel":"高危"
        },
        {
            "timestamp":"2019-11-25 23:11:04",
            "alarmName":" 网站遭受Web组件漏洞利用攻击后，检测到webshell攻击",
            "nodeName":"四川分公司",
            "alarmLevel":"严重"
        },
        {
            "timestamp":"2019-11-25 23:11:04",
            "alarmName":" 网站遭受Web组件漏洞利用攻击后，检测到webshell攻击",
            "nodeName":"四川分公司",
            "alarmLevel":"严重"
        },
        {
            "timestamp":"2019-11-25 23:11:04",
            "alarmName":" 网站遭受Web组件漏洞利用攻击后，检测到webshell攻击",
            "nodeName":"四川分公司",
            "alarmLevel":"严重"
        },
	    {
		    "timestamp": "2019-11-25 23:30:41",
		    "alarmName":"AI模型检测到VPN账号【zhangli】异常登录",
		    "nodeName":"青海分公司",
		    "alarmLevel":"高危"
        },
        {
            "timestamp":"2019-11-25 23:11:04",
            "alarmName":" 网站遭受Web组件漏洞利用攻击后，检测到webshell攻击",
            "nodeName":"四川分公司",
            "alarmLevel":"严重"
        }
    ]
    return Response(data, status=status.HTTP_200_OK)
@api_view(['GET'])
def MapData(request,format=None):
    data = [
	    {
            "riskValue": "52.0",
            "riskValueTrend": "rise",
            "riskValueDifference": "32.0",
            "riskLevel": "2",
            "assetNumVh": "14",
            "assetNumVhTrend": "decline",
            "assetNumVhDifference": "5",
            "alarmH": "345",
            "alarmHTrend": "decline",
            "alarmHDifference": "1",
            "nodeId": "node3",
            "nodeName": "节点3",
            "latitude": "231",
            "longitude": "125",
            "statusCode": "1"
        }
    ]
    return Response(data, status=status.HTTP_200_OK)