#!/bin/bash
## 
source .bkupenv

savefilename=`date +"%Y%m%d%I%M%S`_${filename}_daily
mysqldump -h ${targethost} -u ${dbuser} -p${dbpassword} ${targetdb} --lock-all-tables | gzip > ${savefilename}.dump.gz
