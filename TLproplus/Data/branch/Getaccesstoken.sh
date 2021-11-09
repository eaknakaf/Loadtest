#!/bin/bash
numline=`cat uid.txt | wc -l | sed -e "s/ //g"`
while [ 1 -eq 1 ]
do
	line=`expr $RANDOM % $numline`
	line=`expr $line + 1`	
	name=`sed -n -e "${line}p" uid.txt` 
        now=`date +"%H:%M:%S"`
	curl -k -d "grant_type=password&username=$name&password=Thailife2018" -H "Authorization:Basic MWpGeGtDVlRXZHJEeU9xY2g0UDRwVExsaHV3YTpZQjY4clpsak05YzMyeDJyODhHOXlyQXZhR0Vh" https://pre-tlprompt-api.thailife.com:8243/token -L -o result.txt -s -w "$now,%{time_total},%{http_code}\n" >> result_httpcode.txt
	awk -F'"' '{print $4}' result.txt >> resulttoken.txt
#	sleep 1 
	perl -e 'select(undef,undef,undef,0.01)'
done
