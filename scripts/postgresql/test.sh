#!/bin/bash
export PGPASSWORD=${POSTGRES_PASSWORD}
psql -U${POSTGRES_USER} ${POSTGRES_DB} --pset=pager=off -f  /scripts/postgresql/delete-duplicates.sql