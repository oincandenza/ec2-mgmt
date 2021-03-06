#!/bin/bash
#######################################################
# This script grabs the instance ids that were tagged #
# with "StartStop:[tag]" and starts them              #
# This runs at a specific time via cronjob            #
#######################################################


#this is the text file that has all of the instance IDs 
#that are under this job's tag
ScheduleID = ''

filename=~/ec2-mgmt/startstop/instanceids/$ScheduleID.txt

#create an array of every instance-id in the txt file
array=(`cat "$filename"`)

#every value in this array
for i in "${array[@]}"
do
#start instance
aws ec2 start-instances --instance-ids $i

done
