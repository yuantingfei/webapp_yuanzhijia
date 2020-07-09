# -*- coding: utf-8 -*-
f = open('test.txt', 'w') 
f.write('22222'+"\n")
f.write('444')
f.close()

with open('test.txt', 'r') as f1:
  list1 = f1.readlines()
  for i in range(0, len(list1)):
    list1[i] = list1[i].rstrip('\n')
    print list1[i]