# -*- coding: UTF-8 -*-
import pymysql


def connectdb(db):
    try:
        conn = pymysql.connect(host='localhost',user='root',passwd='123456',db=db,charset='utf-8')  
    except Exception as e:
        conn = 400
    return conn


def get_data(db,sql):
    conn = connectdb(db)
    if conn == 400:
        return conn
    else:
        try:
            cur = conn.cursor() 
            cur.execute(sql)   
            data = cur.fetchall()  
            cur.close()
            conn.commit()
            conn.close()
            return data
        except Exception as e:
            return 401