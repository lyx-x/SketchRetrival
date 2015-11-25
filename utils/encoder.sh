#!/usr/bin/env bash
#exemple: encoder.sh ../Sketch/pipeline/bin/ /Sketch/pipeline/dict.txt

Path="$1" #path of input(ex: binary folder)
Dict="$2" #path of dictionary
Output="$3" #path of output folder
Cases="$4" #case number

for Folder in $Path*/
do
    Dest_Name="${Folder%/}"
    Dest_Name="${Dest_Folder_Name##*/}"
    ./KMean/Debug/./k_mean -f $Folder -d $Dict -s 32 -c $Cases -a 1089 -o $Output$Dest_Name.transf
done