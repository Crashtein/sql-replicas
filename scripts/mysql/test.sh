#!/bin/bash
mysql -u${MYSQL_USER} -p${MYSQL_PASSWORD} ${MYSQL_DATABASE} < /scripts/mysql/delete-duplicates.sql