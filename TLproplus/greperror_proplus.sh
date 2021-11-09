#/bin/bash
#Grep error in Jmeter log file
file=$1
#echo "Total Number of Response Message \"HTTP Error Code 500\": " 
#grep "errorCode&quot;:&quot;500" $file|wc -l
#echo "Total Number of Response Message \"HTTP Error Code 204\": "
#grep "errorCode&quot;:&quot;204" $file|wc -l
#echo "Total Number of Response Message \"HTTP Error Code -1\": "
#grep "errorCode&quot;:&quot;-1" $file|wc -l

echo "Total Number of Response Message \"HTTP Error Code 401\": "
grep "rc=\"401\"" $file|wc -l

echo "Total Number of Response Message \"HTTP Error Code 504\": "
grep "rc=\"504\" rm=\"Gateway Time-out\"" $file|wc -l

echo "Total Number of Response Message \"HTTP Error Socket Close\": "
grep "rc=\"Non HTTP response code: java.net.SocketException" $file|wc -l

echo "Total Number of Response Message \"HTTP Error Code 502\": "
grep "rc=\"502\"" $file|wc -l

echo "Total Number of Response Message \"HTTP Error Code 503\": "
grep "rc=\"503\"" $file|wc -l

echo "Total Number of Response Message \"HTTP error code : 500\": "
grep "HTTP/1.1 500" $file|wc -l



