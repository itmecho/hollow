#!/bin/sh

apk add sqlite
timeout -t 10 -s KILL docker-entrypoint.sh node current/index.js
sqlite3 content/data/ghost.db "update settings set value=\"hollow\" where key = \"active_theme\""

echo ":: initial entrypoint"
docker-entrypoint.sh node current/index.js
