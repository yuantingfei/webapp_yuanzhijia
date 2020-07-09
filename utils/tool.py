# -*- coding: UTF-8 -*-

__author__  = 'yuantingfei@intra.nsfocus.com'
__birth__   = '2018.4.25'
#数据库的数据转化为字段格式
#第一个参数为数据库里面查询处理的数据 数组
#第二个参数为字段的key的数组，通常和sql的顺序对应
def arrToDic(datas,arr_str):
    result = []
    for x in datas:
        dic = {}
        i = 0
        for y in arr_str:
            dic[y] = x[i]
            i = i + 1 

        result.append(dic)
    return result