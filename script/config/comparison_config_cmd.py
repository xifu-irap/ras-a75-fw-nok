# -*- coding: utf-8 -*-
"""
Copyright (C) 2021-2030 Noémie ROLLAND, IRAP Toulouse.

This file is part of the ATHENA X-IFU DRE RAS.

ras-a75-fw is free software: you can redistribute it and/or modifyit under the terms of the GNU General Public 
License as published bythe Free Software Foundation, either version 3 of the License, or(at your option) any 
later version.

This program is distributed in the hope that it will be useful,but WITHOUT ANY WARRANTY; without even the 
implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See theGNU General Public License for 
more details.You should have received a copy of the GNU General Public Licensealong with this program.  

If not, see <https://www.gnu.org/licenses/>.

noemie.rolland@irap.omp.eu
lecture_fich_binaire.py

Created on Tue Jun  8 16:07:09 2021

@author: ATHENA_X-IFU

This script manages the comparison between the cmd file and the results from the pipeout.
"""
import numpy as np

def read_file(file):

    a=open(file, "r")

    b = a.readlines()

    a.close()
    
    return b

def tab_seq_xfreq(cmd, nb_ligne, nb_bit, freq_multip):
    
   """
   Cette fonction permet de créer un tableau où chaque ligne correspond à un pixel.
   Chaque bit de la séquence est répété pour atteindre une résolution suffisante.
   
       Parameters
    ----------
    cmd : list
        liste des séquences de chaque pixel
        
    nb_ligne : int
        valeur du nombre de ligne ( = nombre de pixel)
        
    nb_bit : int
        valeur du nombre de bit ( = nombre de pixel)

    Returns
    -------
    array_seq_xfreq : array
        tableau où chaque bit de la séquence est répété
    
   """
    
   array_seq_xfreq = np.empty([nb_ligne,freq_multip*nb_bit],  dtype=np.dtype('int')) #construction d'un tableau de 800 lignes de 40 entiers

   for i in range(nb_ligne): #on parcourt les lignes du fichier de commandes
    
        for j in range(nb_bit): #on parcourt chaque caractère de la ligne
       
            array_seq_xfreq[i][nb_bit*freq_multip-freq_multip*(j+1):nb_bit*freq_multip-freq_multip*j]=cmd[4+i][39-j] #chaque bit de la séquence est répété "freq_multip" fois
                
   return(array_seq_xfreq)  

def overlap_addition(array_seq_xfreq, REV, freq_multip):
    
    """
    Cette fonction permet d'ajouter les potentiels chevauchements 

    Parameters
    ----------
    array_seq_xfreq : array
        tableau où chaque bit de la séquence est répété
        
    REV : int
        valeur du chevauchement (= nombre de coup d'horloge à 100Mhz de chevauchement de 2 pixels)

    freq_multip : int
        nombre répétition de chaque bit de la séquence de départ                             
    
    Returns
    -------
    array_seq_xfreq_ov : array
        tableau où chaque bit de la séquence de cmd est répété
        un éventuel chevauchement entre 2 pixels est ajouté

    """
    
    for i in range(nb_ligne): #on parcourt les lignes
    
        for j in range(0, nb_bit*freq_multip, freq_multip): #on parcourt les bits par pas de "freq_multip" (les bits entre chaque pas sont égaux au bits de début de pas)
            
            if array_seq_xfreq[i][j] == 1 : #on cherche le moment où le pixel est actif (bit à 1)
            
                if REV >= 0 :
                
                    if j==0 : #cas particulier lorsque la séquence se trouve au début du tableau (on ne peut pas mettre en index[-x:y] il faut mettre que des positifs ou que des négatifs)
                        
                        array_seq_xfreq[i][nb_bit*freq_multip-REV:nb_bit*freq_multip]=1 #dans le cas particulier on met à 1 les deux derniers bits du tableau
                    
                    else:  #cas général
                    
                        array_seq_xfreq[i][j-REV:j]=1 #les "REV" bits après la séquence initiale sont mis à 1
                        
                else :
                    
                    array_seq_xfreq[i][j:j-REV]=0 #les "REV" bits à la fin de la séquence initiale sont mis à 0
                
    return(array_seq_xfreq)


def retourne_cmd(array_seq_xfreq_ov, nb_ligne, nb_bit, freq_multip):
    
    cmd_ret = np.empty([freq_multip*nb_bit,nb_ligne],  dtype=np.dtype('int'))
    
    for j in range(nb_ligne) :
        
        for i in range(nb_bit*freq_multip) :
            
            cmd_ret[nb_bit*freq_multip-1-i][12-j] = array_seq_xfreq_ov[j][i]
    
    return cmd_ret



def comparison_cmd_results(cmd_ret, signals, nb_ligne, nb_bit, freq_multip):
    
    """
    Cette fonction permet de comparer les séquences envoyées en commande et les séquences en sortie de simulation 

    Parameters
    ----------
    array_seq_xfreq_ov : array
        tableau où chaque bit de la séquence de cmd est répété
        un éventuel chevauchement entre 2 pixels est ajouté 
    
    results : array
        tableau avec les séquences utiles de la simulation  
    
    nb_ligne : int
        nombre de ligne
        
    nb_bit : int
        nombre de bit

    freq_multip : int
        nombre répétition de chaque bit de la séquence de départ                  
    
    Returns
    -------
    compare : boolean
        résultat de comparaison entre les commandes et les résultats de simulation

    """     

    compare = True
    
    #test_sig = True
    
    for l in signals :
            
        if l != signals[0] :
            
            indice_signals = signals.index(l)
            
            break
        
    #print(signals)
    
    array_signals = np.empty([511,nb_ligne],  dtype=np.dtype('int'))   

    for i in range(511):
        
        for j in range(13) :
            
            array_signals[i][j] = signals[i][j]
    
    print('Array signal :', array_signals)
    
    for i in range(len(cmd_ret)) :
                
        if (array_signals[indice_signals]==cmd_ret[i]).all() :
            
            indice_cmd = i
            
            break

                
                
    
    print(indice_signals,indice_cmd)
    
    i = 0
    
    while compare == True :
        
        if i+indice_signals < 512 and i+indice_cmd < freq_multip * nb_bit  :
            
            compare = (array_signals[i+indice_signals]==cmd_ret[i+indice_cmd]).all() & compare
            
            i += 1
            
        elif i+indice_signals >= 512 and i+indice_cmd < freq_multip * nb_bit :
            
            for j in range(indice_signals):
                
                compare = (array_signals[j]==cmd_ret[i+indice_cmd]).all() & compare
                
                i += 1
                
        elif i+indice_signals < 511 and i+indice_cmd >= freq_multip * nb_bit  :
            
            print('je passe ici')
            
            for j in range(indice_cmd):
                
                if i+indice_signals < 511 :
                
                    print(i+indice_signals)
                    
                    compare = (array_signals[i+indice_signals]==cmd_ret[j]).all() & compare
                    
                    print(array_signals[i+indice_signals], cmd_ret[j], j)
                    
                    if compare == False :
                        
                        erreur = cmd_ret[j]
                        
                        code_erreur = j
                        
                        print('pas ok', i+indice_signals, array_signals[i+indice_signals], erreur, code_erreur)
            
                        return compare
                        
                    else :
        
                        i += 1
                
        else :
            
            print('ok ', i)
            
            return(compare)
                
            
    print('pas ok', i+indice_signals)
            
    return compare
    
""" 
Paramètres  à saisir par l'utilisateur
"""
freq_row = 5 #exprimée en MHz
freq_multip = int(100/freq_row) #nombre de répétition de chaque bit de la séquence de départ 
nb_ligne = 13
nb_bit = 36 #lg séquence 
REV = 2


"""
Lecture du fichier de commande
"""
cmd_file = "../cmd_9row4cluster.txt"
cmd = read_file(cmd_file)
#print(cmd)


"""
Multiplication de l'apparition de chaque bit de la séquence
"""                
array_seq_xfreq = tab_seq_xfreq(cmd, nb_ligne, nb_bit, freq_multip)
#print(array_seq_xfreq)   


"""
Ajout du chevauchement
"""
array_seq_xfreq_ov = overlap_addition(array_seq_xfreq,REV, freq_multip)
#print('tableau commande avec overlap :',array_seq_xfreq_ov)


"""
Changement d'organisation de la matrice de commande
"""
cmd_ret = retourne_cmd(array_seq_xfreq_ov, nb_ligne, nb_bit, freq_multip)
print('commande retournées :', cmd_ret)


"""
Lecture du fichier de résultats en sortie du pipeout
"""
sig_results = "file_pipeout_bin.txt"
signals= read_file(sig_results)
#print(signals)


"""
Comparaison commandes et résultats de simulation
"""
comparison = comparison_cmd_results(cmd_ret, signals, nb_ligne, nb_bit, freq_multip)
print('resultat de comparaison :', comparison)
