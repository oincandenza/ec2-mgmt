#!/bin/bash

SnapID=''

filename=~/ec2-mgmt/snapshot/$SnapID.txt

array=(`cat "$filename"`)

for i in "${array[@]}"
do

aws ec2 delete-snapshot --snapshot-id $i

done
