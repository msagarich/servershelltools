#!/bin/sh

# 登録したいcronテーブル
cron_jobs=setting_cron_jobs.txt

# crontabファイル
cron_file="/var/spool/cron/root"

# 無ければ作る
[ -f ${cron_file} ] && touch ${cron_file}

# 無い場合は中止
if [ -f ./${cron_jobs} ]; then
    cat ./${cron_jobs} > ${cron_file}
else
    echo "cron設定ファイルがありません。${cron_jobs}"
    return -1
fi

# cron再起動
/etc/init.d/crond restart


echo "Cronが更新されました"