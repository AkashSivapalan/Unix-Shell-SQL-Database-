#!/bin/sh
export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

username="a7sivapa"
password="07257795"

	echo '1. Lists license number of safe drivers which are usually people with clean driving records or age between 30 and 60'
	echo '2. counts the number of cars in each branch'
	echo '3. shows customers that are rejected due to insufficent balance '
	echo '4. shows the distonct availible car models that are more luxurious with higher cost that is specifically not an civic '
	echo '5. displays cheapest car for each rental company branch'
	echo '6. Lists customers with Insurance company that start with All'

    read input

	if [ "$input" = "1" ]; then
         sqlplus64 "$username/$password@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))"  < ./query1
     elif [ "$input" = "2" ]; then
         sqlplus64 "$username/$password@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))"  < ./query2
     elif [ "$input" = "3" ]; then
         sqlplus64 "$username/$password@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))"  < ./query3
     elif [ "$input" = "4" ]; then
         sqlplus64 "$username/$password@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))"  < ./query4
     elif [ "$input" = "5" ]; then
	 sqlplus64 "$username/$password@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))"  < ./query5

     elif [ "$input" = "6" ]; then
	 sqlplus64 "$username/$password@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))"  < ./query6
     else
         echo 'Invalid Input'
     fi
