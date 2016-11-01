#!/bin/bash

######
# Fill out#
#######

SnapID=''

aws ec2 describe-instances --filters "Name=tag:Snapshot,Values=$SnapID" |
grep "VolumeId" | awk '{print $2;}' | 
sed 's/[\",]//g' > /home/ec2-user/ec2-mgmt/snapshot/$SnapID.txt
