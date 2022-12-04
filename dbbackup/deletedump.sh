#!/sh/bash

source .bkupenv
find ${archivedir} -type f -name "*.daily.dump.gz" -daystart -mtime +${daily_count} | rm -rf
find ${archivedir} -type f -name "*.weekly.dump.gz" -daystart -mtime +`expr ${weekly_count} * 7` | rm -rf
find ${archivedir} -type f -name "*.monthly.dump.gz" -daystart -mtime +`expr ${monthly_count} * 31` | rm -rf