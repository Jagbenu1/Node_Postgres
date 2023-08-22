#!/usr/bin/env bash 

database="monstersdb"

echo "Configuring database: $database"

dropdb -U node_user monstersdb

echo "Dropped database: $database"

createdb -U node_user monstersdb

bash -c "psql -U node_user monstersdb < ./bin/sql/monsters.sql"


echo "$database configured!"