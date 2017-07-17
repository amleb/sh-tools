#!/usr/bin/env bash

path="/backup/mysql/mysql.daily"
if [ ! -d "$path" ]
then
    umask 0077
    mkdir -p $path
fi
umask 0177

for db in `mysql -Nse 'show databases'|grep -v information_schema|grep -v performance_schema`
do
    dump="${db}_`date '+%F'`.sql"
    mysqldump -l --events $db > $path/$dump
    gzip $path/$dump

    remove="${db}_`date --date '7 days ago' '+%F'`.sql.gz"
    if [ -f "$path/$remove" ]; then
        rm -f -- "$path/$remove"
    fi
done
