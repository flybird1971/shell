#!/usr/bin/python
#coding:utf8

import sys
import os
import commands as sysCmd
import platform

def getDirPrefix():
   (status,username) = sysCmd.getstatusoutput('who i am')
   username = username.split(' ')
   username = username[0]
   seperator = '$ '
   curDir = os.getcwd()
   sysstr = platform.platform()
   #regex = re.complile('')
   sysstr = 'ubuntu'
#   sysPlatform = platform.python_version()
   sys.stdout.write(username+'@'+sysstr+':'+curDir + seperator)
 

getDirPrefix
sys.stdout.write ( " pleas 'q' or 'quit' or 'exit' for exit \n ")
cmd = raw_input()

while True :
    exitList = ['q','quit','exit']
    if cmd in exitList:
        break
#    print cmd
    if  cmd :
        (status,output) = sysCmd.getstatusoutput(cmd)
        getDirPrefix()
        print output.replace('\n','\t\t\t')
#        for tmp in output:
#            print(tmp)

#        print (sysCmd.getstatusoutput(cmd),end='')
    getDirPrefix()
    cmd = raw_input()
 
print "thanks for use ,exit!"


