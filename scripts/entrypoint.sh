#!/bin/bash

if [ -n $DATABASE_URI ]; then

    pgcli postgres://$DATABASE_USER:$DATABASE_PASSWORD@$DATABASE_HOST:$DATABASE_PORT/$DATABASE_DB
else
    echo "Database URL not provided, please try again."
fi