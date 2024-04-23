#!/bin/sh

echo "starting db backup"
day=$( date '+%F_%H:%M:%S' )
db_backup="progreso_backup_${day}.sql"

docker exec -it java-api-db mysqldump -uroot -p3kzfwe5LIeqpKMKfySsXJ6c8Z6GSJkxz --no-tablespaces progreso  >${db_backup} exit


echo "db backup complete"
