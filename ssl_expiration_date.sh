#!/bin/bash
expiry_date=$(timeout 3 openssl s_client -host "$1" -port 443 -servername "$1" -showcerts </dev/null 2>/dev/null | sed -n '/BEGIN CERTIFICATE/,/END CERT/p' | openssl x509 -text 2>/dev/null | sed -n 's/ *Not After : *//p')

# timestamp when certificate will expire
end_ts=$(date -d "$expiry_date" '+%s')

# current timestamp
start_ts=$(date '+%s')

# print it as Numeric format
printf "%d" $(( ( end_ts - start_ts )/(60*60*24) ))
