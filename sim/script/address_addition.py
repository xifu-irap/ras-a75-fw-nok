# -*- coding: utf-8 -*-
"""
Created on Tue May 18 15:10:50 2021

@author: ATHENA_X-IFU

Cette fonction permet d'ajouter chaque adresse correspondante à la commande, on retrouve l'addresse du registre puis 32 bits de commande.

le fichier se construit de la façon suivante :
addr
data
addr
data
...

Pour la bonne construction du fichier il faut que les commandes soient dans l'ordre dans le fichier de départ pour que chaque commande soit attribuée à la bonne adresse

"""
#import numpy as np


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


def read_cmd(file):

    a=open(file, "r")

    cmd = a.readlines()

    a.close()
    
    return cmd


def write_cmd(file, cmd, nb_bit):

    a = open(file, "w")
    
    a.write(dec2natbin((4+13*2)*4+1,nb_bit)+"\n")
    a.write(cmd[0])
    
    for i in range(4):
        
        a.write(dec2natbin(i*4+1, nb_bit)+"\n") #écriture de l'adresse
        a.write(cmd[i+1])#écriture de la commande
            
    for j in range(13):
                
    #les séquences de pixels sont sur 40 bits => on met 32 bits dans une commande puis 8 bits complétés par des bits à 0 pour avoir 32 bits dans une autre commande à la suite
                
        a.write(dec2natbin(16 + j*8+1, nb_bit)+"\n") #écriture de l'adresse
        a.write(cmd[4 + j + 1][8:40]+"\n") #écriture de la commande
                
        a.write(dec2natbin(16 + j*8 + 4+1, nb_bit)+"\n")#écriture de l'adresse
        a.write('000000000000000000000000'+cmd[4 + j + 1][:8]+"\n") #écriture de la commande
                
                
    a.write(dec2natbin((4+13*2)*4+1, nb_bit)+"\n") #écriture de l'adresse
    a.write(cmd[18]+"\n") #écriture de la commande      

    a.close()     
                


nb_bit = 32

cmd_file = "cmd_9row4cluster.txt"
cmd = read_cmd(cmd_file)

cmd_addr_file = "cmd_addr_9row4cluster.txt"
write_cmd(cmd_addr_file, cmd, nb_bit)
