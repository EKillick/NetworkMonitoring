datetime=$(date +"%Y%m%d")
wget -O /dev/null ftp://bks-speedtest-1.tele2.net/100MB.zip -a $datetime.log
