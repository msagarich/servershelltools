#!/bin/bash
## 
source .bkupenv

savefilename=`date +"%Y%m%d%I%M%S`_${filename}_monthly
mysqldump -h ${targethost} -u ${dbuser} -p${dbpassword} --databases ${targetdb} | gzip > ${savefilename}.dump.gz