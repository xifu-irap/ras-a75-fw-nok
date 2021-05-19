# -*- coding: utf-8 -*-
"""
Created on Mon Feb 22 14:00:36 2021

@author: ATHENA_X-IFU
"""

def read_cmd(file):

    a=open(file, "r")

    cmd = a.readlines()
    
    print(cmd)
    
    a.close()
    
    return cmd


def write_cmd(file, cmd, nb_bit):

    a = open(file, "w")
    
    for i in range(len(cmd)):
        
        if i==0 : 
            
            a.write("-- W : Register address : "+ str(120) +"\n")
        
        if i%2==0 and i!=0 :
            
            a.write("-- W : Register address : "+ str((i-2)*2) +"\n")
        
        for j in range(4):
            
            a.write("pipeIn("+str(j)+"):= \""+str(cmd[i][nb_bit-8-j*8:nb_bit-j*8])+"\" ;\n")
        
        a.write ("WriteToPipeIn(x\"80\",pipeInSize);\n")
        
        a.write ("wait for 10 ns;\n\n")
    
    a.write ("wait for 250 ns;\n\n")
    
    a.write ("ReadFromPipeOut(x\"A0\", 3000\n\n")
    
    register_read = 1

    while register_read != "0" :    
    
        register_read = input("Do you want to read a register ? 1:yes 0:no")
        
        print(register_read)
        
        if register_read == "1" :
            
            register = int(input("Which register do you want to read ?"))
            
            a.write("-- R : Register address : "+ str(register) +"\n")
            
            for j in range(4):
                
                a.write("pipeIn("+str(j)+"):= \""+str(dec2natbin(register,8*4)[nb_bit-8-j*8:nb_bit-j*8])+"\" ;\n")
            
            a.write ("WriteToPipeIn(x\"80\",pipeInSize);\n")
            
            a.write ("wait for 10 ns;\n\n")
    
    
    a.write ("ReadFromPipeOut(x\"A1\", 3000\n\n")
    
    a.close()


def dec2natbin(dec, n):

    r"""

    This function computes the natural binary value of a positive integer.


    Parameters
    ----------

    dec : number
        The decimal input integer to be converted

    n : number
        The number of bits of the output string

    Output
    ------

    bin_str : string
        The binary value in a string format

    Raises
    ------

    ValueError
        When n is too small to do the conversion

    See Also
    --------

    num : string to number conversion

    """

    bin_str = ''

    if dec >= 0:

        while n > 0:

            bin_str = str(dec % 2) + bin_str

            dec >>= 1

            n += -1

    if dec > 0:

        raise ValueError('Requested size is too small for this value')

    return bin_str




cmd_file = "cmd_addr_9row4cluster.txt"
cmd = read_cmd(cmd_file)

nb_bit = 32

cmd_addr_file = "tb_cmd.txt"
write_cmd(cmd_addr_file, cmd, nb_bit)

filenames = ['tb_beginning.txt', 'tb_cmd.txt', 'tb_end.txt']
with open('row_addressing_tb.vhd', 'w') as outfile:
    for fname in filenames:
        with open(fname) as infile:
            outfile.write(infile.read())