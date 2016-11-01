#!/bin/bash
#######################################################
# This script grabs the instance ids that were tagged #
# with "StartStop:[tag]" and starts them              #
#######################################################


#this is the text file that has all of the instance IDs that are under this job
scheduleID = ''

filename=/home/ec2-user/ec2-mgmt/startstop/instanceids/$scheduleID.txt

#create an array of every instance-id in the txt file
array=(`cat "$filename"`)

#every value in this array
for i in "${array[@]}"
do
#start instance
aws ec2 start-instances --instance-ids $i

done
