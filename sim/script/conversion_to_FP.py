# -*- coding: utf-8 -*-
"""
Created on Wed May  5 10:29:32 2021

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
   

file_dec = "cmd_addr_9row4cluster.txt"
cmd= read(file_dec)
print(cmd)


cmd_byte=[]
for i in range(64):
    for j in range(4):
        cmd_byte.append(cmd[i][32-(j+1)*8:32-j*8])
#print(cmd_byte)

for j in range(64):
    for i in range(4,16):
        cmd_byte.insert(16*j+i,'00000000')
print(cmd_byte)


file_bin ="file_to_FPGA_9row4cluster.txt"
write_bin(file_bin,cmd_byte)





