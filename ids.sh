#!/bin/bash

##########################################################
# This queries AWS for instances with the tags of the    #
# start-stop schedule we want; this runs every 2 minutes #
# to update the txt file                                 #
##########################################################

#What the tag value is for StartStop:[value]
ScheduleID = ''

#find instance IDs with this tag
aws ec2 describe-instances --filters "Name=tag:StartStop,Values=$ScheduleID" | grep "InstanceId" | 

# prints the instance ID
awk '{print $2;}' | sed 's/[\",]//g' > 

#txt file with instance IDs that start.sh refers to

~/ec2-mgmt/startstop/instanceids/$ScheduleID.txt
