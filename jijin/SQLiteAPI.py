# -*- coding: utf-8 -*-
import sqlite3
import collections


class SQLiteAPI(object):
    def __init__(self, dbname=None):
        self.dbname = dbname if dbname is not None else 'test.db'
        self.conn = sqlite3.connect(self.dbname)  # 如果文件不存在，会自动在当前目录创建:
        # 创建一个Cursor
        self.cursor = self.conn.cursor()
        
    def create(self, table, fields):
        '''
        建表（待完善）
        :param table: 表名
        :param fields: 字段及类型
        :return: 执行结果
        '''
        flag = True
        try:
            data = fields.items()
            func = lambda x: ' '.join(x)
            field_info = ','.join(list(map(func, data)))
            # create table fields
            sql_create = "CREATE TABLE "+table+" ("+field_info+")"
            print(sql_create)
            self.cursor.execute(sql_create)
            self.conn.commit()  # 提交事务
        except Exception as e:
            print(e)
            flag = False
        return flag
        
    def insert(self, table, data):
        '''
        插入语句
        :param table: 表名
        :param data: 字典（包含插入列，值）
        :return: 执行结果
        '''
        flag = True
        count = 0
        try:
            data = collections.OrderedDict(data)
            keys = tuple(data.keys())
            vals = tuple(data.values())
            sql_insert = '''INSERT INTO %s %s VALUES %s''' % (table, keys, vals)
            print(sql_insert)
            self.cursor.execute(sql_insert)
            count = self.cursor.rowcount
            self.conn.commit()
        except Exception as e:
            print(e)
            flag = False
        return flag, count
    
    def select(self, table, cols='*', where=''):
        '''
        查询
        :param table: 表名
        :param cols: 查询列
        :param where: 查询条件
        :return: 查询结果
        '''
        values = None
        try:
            where = 'WHERE ' + where if where else ''
            sql_select = '''SELECT {1} FROM {0} {2}'''.format(table, cols, where)
            print(sql_select)
            self.cursor.execute(sql_select)
            values = self.cursor.fetchall()
        except Exception as e:
            print(e)
        
        return values
   	
    def update(self, table, data, where=''):
        '''
        更新表
        :param table: 表名
        :param data:更新数据
        :param where:条件
        :return: 执行结果
        '''
        flag = True
        count = 0
        try:
            data = data.items()
            func = lambda x: ' = '.join(x)
            field_info = ','.join(list(map(func, data)))
            where = ' WHERE ' + where if where else ''
            sql_update = '''UPDATE {0} SET {1} {2}'''.format(table, field_info, where)
            print(sql_update)
            self.cursor.execute(sql_update)
            count = self.cursor.rowcount
            self.conn.commit()
        except Exception as e:
            print(e)
            flag = False
        return flag, count
        
    def delete(self, table, where=''):
        '''
        删除数据
        :param table: 表名
        :param where: 条件
        :return: 执行结果
        '''
        flag = True
        count = 0
        if not where:
            print('条件不能为空，请重新尝试！')
            return False, count
        try:
            sql_delete = '''DELETE FROM {0} WHERE {1}'''.format(table, where)
            
            self.cursor.execute(sql_delete)
            count = self.cursor.rowcount
            self.conn.commit()
        except Exception as e:
            print(e)
            flag = False
        return flag, count
       
    def drop(self, table):
        '''
        删除表
        :param table:
        :return:
        '''
        flag = True
        try:
            sql_drop = "DROP TABLE "+table
            self.cursor.execute(sql_drop)
            self.conn.commit()
        except Exception as e:
            print(e)
            flag = False
        return flag
    def close(self):
        self.cursor.close()  # 关闭Cursor
        self.conn.close()  # 关闭Connection

# def code_test():
#     # 新建表
#     fields = {
#         'id ': 'INT PRIMARY KEY',
#         'name': 'VARCHAR(50) NOT NULL',
#         'phone': 'VARCHAR(20)',
#         'address': 'VARCHAR(50)',
#         'age': 'INT NOT NULL',
#         'position': 'VARCHAR(20)',
#         'salary': 'REAL',
#     }
    # res = myApi.create('user',fields)
    # print('create result is :', res)
    
    # # 插入数据
    # insert_data = {
    #     'id': '1',
    #     'name': 'alfred',
    #     'phone': '111111',
    #     'age': '20',
    #     'salary': '15000',
    # }
    # res2 = myApi.insert('user', insert_data)
    # print('insert result is :', res2)
    
    # # 查询数据
    # res3 = myApi.select('user', cols='id,name', where='id=2')
    # res3 = myApi.select('user')
    # print('select result is :', res3)
    
    # # 更新数据(提示：no such column: 加''号，可以用转义字符)
    # update_data = {
    #     'name': '\'Lucy\''
    # }
    # res4 = myApi.update('user', data=update_data, where='id=3')
    # print('update result is :', res4)
    
    # 删除数据
    # res5 = myApi.delete('user', where='id=3')
    # print('delete result is :', res5)
    
    # 删除表
#     res6 = myApi.drop('user')
#     print('drop result is :', res6)


# myApi = SQLiteAPI('/opt/yuantingfei/webapp/webapp/db.sqlite3')


# if __name__ == '__main__':
#     code_test()