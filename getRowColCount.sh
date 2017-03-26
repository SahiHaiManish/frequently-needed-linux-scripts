#!/bin/bash

################ AUTHOR: Manish Balchand Jain ##################

#WHAT THIS SCRIPT DOES: Tell you the number of rows and coloumns in a file.

#INPUT FORMAT: bash getRowColCount.sh FileName
#OUTPUT FORMAT: Row, Coloumn

fileName=$1

row=`wc -l <  $fileName`
col=`awk '{print NF}' $fileName | sort -nu | tail -n 1`

echo $row", "$col
