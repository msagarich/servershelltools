# servershelltools
Linux サーバで利用するシェルツールキット

# ツール
## MySQLバックアップシェル
Install
```bash
$ tools_install.sh dbbackup

Do you auto regist cron? (Y/n):Y
What type backup do you want? 
  1. 3 daily backup.
  2. 7 daily backup.
  3. 3 daily 4 weekly backup.
  4. 3 daily 4 weekly 12 month backup
  5. 7 daily 4 weekly backup.
  6. 7 daily 12 weekly backup.
  7. 7 daily 12 weekly 12 monthly backup.

(registerd) : cron 7 daily 4 weekly 12 month backup registed!


```



## あったらいいな
* バックアップ転送（S3）
* バックアップ転送（SCP）
* バックアップ転送（SFTP）
* 自動バックアップ
