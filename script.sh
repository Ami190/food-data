#!/bin/bash

#dir = 'train/'

while IFS=, read -r col1 col2
do
for i in 'find train-images -name $col1';
do 
mkdir -p train/${col2} && cp -v -n ~/training-data/train-images/${col1}  ~/training-data/train/${col2};
done
     
done < train.csv
