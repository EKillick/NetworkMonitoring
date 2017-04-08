#!/bin/bash
#A script to save traceroutes of each host  and save the results
#A folder is created for each host and the script iterates through these
#The folder names must be the same as the addresses being pinged
for d in * ; do
    if [[ -d $d ]]; then                            #Only runs on folder names
        echo "$d"                                   #Prints out the name of the current host
        date >> $d/fulltrace.log                    #Appends the current datetime to the logfiles
        traceroute $d >> $d/fulltrace.log           #Appends traceroute to logfile
        echo $'\n' >> $d/fulltrace.log              #Adds spaces to the logfile
    fi
done
