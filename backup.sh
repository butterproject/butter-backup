#!/usr/bin/env bash

if [ -z "$TOKEN" ]; then
    echo "You need to set the variable TOKEN.";
    echo "Get it at https://github.com/settings/tokens.";
    exit 1
fi

DEST="/backup-data"

github-backup --token $TOKEN --output-directory $DEST -O --all butterproject

chmod 777 -R $DEST
