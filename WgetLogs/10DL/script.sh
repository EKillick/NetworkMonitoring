#!/bin/bash
for i in {1..10}; do
	wget -O /dev/null ftp://bks-speedtest-1.tele2.net/100KB.zip -a 100KB.log
	wget -O /dev/null ftp://bks-speedtest-1.tele2.net/2MB.zip -a 2MB.log
	wget -O /dev/null ftp://bks-speedtest-1.tele2.net/100MB.zip -a 100MB.log
done
