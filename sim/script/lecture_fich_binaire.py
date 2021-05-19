# -*- coding: utf-8 -*-
"""
Created on Mon May 17 11:44:56 2021

@author: ATHENA_X-IFU
"""

import numpy as np

def read(file):
    
    r"""

    This function reads the output data directly from the xem3010.

    

    Parameters

    ----------

    file : 

        The file with the output values of the xem3010


    Output

    ------

    a : array

        Array with the decimal outputs of the xem3010


    """

    a = np.fromfile(file, dtype=np.uint16) #construct an array of data from the binary file

    print("Values from cmd: {0}".format(a))
    
    return a


def write(file, cmd):

    a = open(file, "w")
    
    for i in range(len(cmd)):
        
        a.write(str(cmd[i])+"\n")
        
        # print(cmd[i])
        
    a.close()
    
def read_output_pipeout(file):
    
    r"""

    This function reads the output data directly from the xem3010.

    

    Parameters

    ----------

    file : 

        The file with the output values of the xem3010


    Output

    ------

    a : array

        Array with the decimal outputs of the xem3010


    """

    a = np.fromfile(file, dtype=np.uint16) #construct an array of data from the binary file

    print("Values from FPGA: {0}".format(a))
    
    return a


file_bin = "file_to_FPGA_9row4cluster_bin.txt"
lecture = read(file_bin)

write("fich1.txt",lecture)

file_pipeout = "file_pipeout"

pipeout_sig = read_output_pipeout(file_pipeout)
write("fich_pipeout_dec.txt",pipeout_sig)


