# -*- coding: utf-8 -*-

import urllib.request
import urllib.parse
import http.cookiejar
import json
import random
import time


def get_comCode(postid):
    url_xhr="http://www.kuaidi100.com/autonumber/autoComNum?"
    req = urllib.request.Request(url_xhr)

  
    ori_headers = {
        'Host': 'www.kuaidi100.com',
        'Proxy-Connection': 'keep-alive',
        'Accept': 'application/json, text/javascript, */*; q=0.01',
        'X-Requested-With': 'XMLHttpRequest',
        'User-Agent': 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36',
        'DNT': '1',
        'Referer': 'http://www.kuaidi100.com/',
        'Accept-Language': 'zh-CN,zh;q=0.8,,en-US;q=0.6,en;q=0.4',
        'Origin': 'http://www.kuaidi100.com',
        'Content-Length': '203'
    }
    
    form_data = urllib.parse.urlencode({  
        'text': postid,
    }).encode()  

    
    for key,value in ori_headers.items():
        req.add_header(key,value)

    
    cj = http.cookiejar.CookieJar()  
    pro = urllib.request.HTTPCookieProcessor(cj)
    opener = urllib.request.build_opener(pro)

    op = opener.open(req,form_data)  
    data_bytes = op.read()  

    data_str = bytes.decode(data_bytes)  

    ori_content = json.loads(data_str)  
    inner_content = ori_content['auto'][0]['comCode']  

    time.sleep(1)

    return inner_content

def get_content(postid):

    url_xhr = "http://www.kuaidi100.com/query?"
    req = urllib.request.Request(url_xhr) 

    #HTTP头
    ori_headers = {
        'Host' : 'www.kuaidi100.com',
        'Connection' : 'keep-alive',
        'Accept' : '*/*',
        'Origin' : 'http://www.newrank.cn',
        'X-Requested-With': 'XMLHttpRequest',
        'User-Agent' : 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36',
        'Content-Type':'application/x-www-form-urlencoded; charset=UTF-8',
        'DNT':'1',
        'Referer': 'http://www.kuaidi100.com/',
        'Accept-Language': 'zh-CN,zh;q=0.8',
    }
    
    temp = str(random.random())
    type = get_comCode(postid)
    form_data = urllib.parse.urlencode({ 
        'type' : type,
        'postid' : postid,
        'id':'1',
        'valicode':'',
        'temp':temp,
    }).encode()    

    
    for kay, value in ori_headers.items():
        req.add_header(kay, value)

    
    cj = http.cookiejar.CookieJar()
    pro = urllib.request.HTTPCookieProcessor(cj)
    opener = urllib.request.build_opener(pro)

    op = opener.open(req, form_data)
    data_bytes = op.read()
    data_str = bytes.decode(data_bytes)

    ori_content = json.loads(data_str)  
    inner_content = ori_content['data']
    return inner_content,postid

def add_postid():
    id = input("Please input your express NO.")
    if id != None:
        return id

def main():
    postid = add_postid()
    print('Loading... ...')
    time.sleep(5)
    print('Your Express NO. is'+postid)
    try:
        content, postid = get_content(postid)
        print('NO.'+postid+'   information is  ')
        for x in content:
            print(x['time'] + x['context'])
        print('')
    except:
        print('Error on NO. !!!')

if __name__ == '__main__':
    main()