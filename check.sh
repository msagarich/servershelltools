#!/bin/bash
## init

### MySQL
echo -n "mysql=" > ./result.ini
mysqld --version > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "1" >> ./result.ini
else
    echo "0" >> ./result.ini
fi
