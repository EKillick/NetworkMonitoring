#!/bin/bash
#A script to ping servers 100 times and save the results
#A folder is created for each host and the script iterates through these
#The folder names must be the same as the addresses being pinged
for d in * ; do
    if [[ -d $d ]]; then                            #Only runs on folder names
        echo "$d"                                   #Prints out the name of the current host
        date >> $d/full.log                         #Appends the current datetime to the logfiles
        date >> $d/summary.log
        ping -c 100 $d >> $d/full.log               #Appends ping results to one file
        tail -3 $d/full.log >> $d/summary.log       #Adds summary lines to a separate file
        echo $'\n\n' >> $d/full.log                 #Adds new lines to each file
        echo $'\n' >> $d/summary.log
    fi
done
