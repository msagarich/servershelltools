#!/bin/bash

source .bkupenv

## 確認メッセージを出す
mysql -u ${dbuser} -p${dbpassword} -h ${targethost} < ${1}_${filename}