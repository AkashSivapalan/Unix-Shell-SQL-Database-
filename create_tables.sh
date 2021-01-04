#!/bin/sh
    export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
    
    username="a7sivapa"
    password="07257795"
    
    sqlplus64 "$username/$password@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" < ./create_tables
