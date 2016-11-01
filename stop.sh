#!/bin/bash

###################################################
# Stops the instances for your StartStop Schedule #
###################################################

ScheduleID= ''

filename=~/ec2-mgmt/startstop/instanceids/$ScheduleID.txt

array=(`cat "$filename"`)

for i in "${array[@]}"
do

aws ec2 stop-instances --instance-ids $i

done
