# -*- coding: utf-8 -*-
"""
Created on Fri May 21 14:20:41 2021

@author: ATHENA_X-IFU
"""

import struct

def read(file):

    a=open(file, "r")

    cmd = a.readlines()
    
    a.close()
    
    return cmd

def write_bin(file, cmd_byte):

    a = open(file, "wb")
    
    for i in range(len(cmd_byte)):
        
        #byte = bin(int(cmd[i],2))
        
        a.write(struct.pack('H',int(cmd_byte[i],2)))
        
        
file_cmd = "cmd_RUN1.txt"
cmd = read(file_cmd)


cmd_byte=[]
for i in range(4):
    for j in range(4):
        cmd_byte.append(cmd[i][32-(j+1)*8:32-j*8])
print(cmd_byte)       

file_bin ="cmd_RUN1_bin"
write_bin(file_bin,cmd_byte)