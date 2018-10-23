#!/bin/sh

apk add sqlite
timeout -t 10 -s KILL docker-entrypoint.sh node current/index.js
sqlite3 content/data/ghost.db "update settings set value=\"hollow\" where key = \"active_theme\""
sqlite3 content/data/ghost.db "update users set password = \"\$2b\$10\$6S3hPYopEGAg0monVLjO6.sdk0VAtnS7OwrqlzdT3KQDQK2vp.PNe\", status = \"active\" where id = 1"

echo ":: initial entrypoint"
docker-entrypoint.sh node current/index.js
