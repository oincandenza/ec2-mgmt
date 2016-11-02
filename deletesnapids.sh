#!/bin/bash

SnapshotID=''

aws ec2 describe-snapshots 
#This is tricky; if you change the description you need to make sure you update this to grab these.
--filters "Name=description,Values=Automated Daily Snapshot created on `date +%Y-%m-%d --date '7 days ago'`" | 
grep "SnapshotId" | awk '{print $2;}' | sed 's/[\",]//g' > /home/ec2-user/ec2-mgmt/snapshot/$SnapshotID.txt                                                                                                 
