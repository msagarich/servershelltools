#!/bin/bash
## 
source .bkupenv

savefilename=`date +"%Y%m%d%I%M%S`_${filename}_weekly
mysqldump -h ${targethost} -u ${dbuser} -p${dbpassword} ${targetdb} --flush-logs --lock-all-tables | gzip > ${savefilename}.dump.gz

savefilename=`date +"%Y%m%d%I%M%S`_${filename}_weekly
mysqldump -h ${targethost} -u ${dbuser} -p${dbpassword} ${targetdb} --flush-logs --lock-all-tables | gzip > ${savefilename}.dump.gz