

echo "Total ERROR:"
grep "Step" ResultEpp.jtl | wc -l 

echo "applicationEAppService/,504,Gateway Time-out:" 
grep "applicationEAppService/,504,Gateway Time-out" ResultEpp.jtl | wc -l

echo "applicationEAppService/,502,Bad Gateway:"
grep "applicationEAppService/,502,Bad Gateway" ResultEpp.jtl |wc -l
