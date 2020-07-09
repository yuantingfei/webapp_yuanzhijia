# -*- coding: utf-8 -*-
import sys
import  psycopg2
import datetime
import random
class pg_db:
    def __init__(self,dbname='ncasb',usrname='ncasb',usrpassword='pg123',host='127.0.0.1',port='5432'):
        # def __init__(self,dbname='test',usrname='postgres',usrpassword='ytf!@#123',host='127.0.0.1',port='5432'):
        self.conn = psycopg2.connect(database=dbname, user=usrname, password=usrpassword, host=host, port=port)
        self.cur = self.conn.cursor()

    #插入一句 直接commit
    def executeInsertOne(self,query,tup):
        try:
            if isinstance(query, str):                
                self.cur.execute(query,tup)
                self.conn.commit()
        except Exception, e:
            raise e

    def SelectInfo(self):
        
        reload(sys)
        sys.setdefaultencoding("utf-8")
        print sys.getdefaultencoding()         
        query_sql_str = "select * from casb_ip_info"
        self.cur.execute(query_sql_str)
        data_list = self.cur.fetchall()
        print data_list
        return data_list

    def __del__(self):
        self.cur.close()
        self.conn.close()


def insertv_casb_user_event(data):
    pg_db1 = pg_db()
    sql = """
    INSERT INTO "v_casb_user_event" (
    "userid",
    "uuid",
    "event",
    "clientip",
    "operationtime",
    "app_type"
)
VALUES
    (
        %s,
        'da38tm5on59d',
        %s,
        %s,
        %s,
        '0'
    )"""
    pg_db1.executeInsertOne(sql,data)

def insertv_alarm(data):
    pg_db1 = pg_db()
    sql = """
    INSERT INTO "v_alarm" ( "userid", "operation", "policy_name", "policy_content", "ip", "severity", "creationtime") VALUES (%s,%s,%s,%s,%s,%s,%s)
"""
    pg_db1.executeInsertOne(sql,data)
    pass
ip = ['119.6.3.75','129.4.65.4','158.45.15.56','115.56.3.78','118.45.12.46']
user = ['yuantingfei@nsfocuscomcn.onmicrosoft.com','yangxuncai@nsfocuscomcn.onmicrosoft.com','liuwenwen2@nsfocuscomcn.onmicrosoft.com','yuanshichao@nsfocuscomcn.onmicrosoft.com','chenlimin@nsfocuscomcn.onmicrosoft.com']
event = ['创建用户','登录失败','登录成功','删除用户','修改用户','恢复用户','修改密码','更改用户的角色','添加组','修改组','添加组成员','添加组的所有者','删除组的所有者','添加组的管理者','删除组的管理者','上传文件','下载文件','删除文件','修改文件','编辑文件','访问文件','移动文件','拷贝文件','创建共享','删除共享','创建匿名共享','删除匿名共享']

alarm = ['多次登录失败','修改密码','在未被允许的地理位置登录','使用可疑IP访问','在可疑时间访问资源','进行敏感操作行为','进行上传超大文件操作']
alarmsevertiy = [1,1,2,2,0,1,0]

import random
def addevent():
    print "addevent start"
    for x in xrange(1,260):
        eventindex = random.randint(0,len(event)-1)
        ipindex = random.randint(0,len(ip)-1)
        timeindex = random.randint(0,20)
        data = [user[ipindex],event[eventindex],ip[ipindex],datetime.datetime.now()-datetime.timedelta(hours=timeindex)]
        insertv_casb_user_event(data)
        if x%25==0:
            print x
    print "addevent end"

def addalarm():
    print "addalarm start"
    for x in xrange(1,200):
        alarmindex = random.randint(0,len(alarm)-1)
        if alarmindex == 3:
            alarmindex = 0
        ipindex = random.randint(0,len(ip)-1)
        timeindex = random.randint(0,20)
        data = [user[ipindex],alarm[alarmindex],alarm[alarmindex],'2',ip[ipindex],alarmsevertiy[alarmindex],datetime.datetime.now()-datetime.timedelta(hours=timeindex)]
        insertv_alarm(data)
        if x%25==0:
            print x
    print "addalarm end"

if __name__ == "__main__":
    addevent()
    addalarm()
    # pg_db.SelectInfo()
