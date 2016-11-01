#!/bin/bash

########
# this creates the snapshots
#################

SnapID=''

filename=~/ec2-mgmt/snapshot/$SnapID.txt

array=(`cat "$filename"`)

for i in ${!array[@]}; do

#To add, include either the instance or VolID in the description + adding a name + success email output

#Creates a snapshot for everyvolume id referred to in $filename and adds the description including time SS was taken

aws ec2 create-snapshot  --volume-id ${array[$i]}  --description "Automated Daily Snapshot created on `date +%Y-%m-%d`"
done
