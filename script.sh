#!/bin/bash

input="/dockerx/DependencyTree/exp/names_all_pack.txt"
#output="/home/ashmishr/compute/All_commits"
while IFS= read -r line
do
echo "$line"
#cd "$line"
retVal=$?
if [ $retVal -eq 0 ]; then
	img_name=" ${line}_graph.png"
	echo " image name = $img_name"
	debtree -R $line | dot -Tpng > $img_name
fi
done < "$input"

