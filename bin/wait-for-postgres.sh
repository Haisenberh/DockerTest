#!/usr/bin/env bash
# wait-for-postgres
set -e
TIMEOUT=60
COUNT=0
until pg_isready -h "postgres" -p "5432" || [ $COUNT -eq $TIMEOUT ];
do
  echo $COUNT
  echo $TIMEOUT
  sleep 1
  COUNT=$((COUNT+1))
done