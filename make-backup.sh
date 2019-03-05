d=$(date +%Y-%m-%d-%R:%S)
mkdir -p backups/$d
rsync statclub:www-root/db.sqlite3 backups/$d/
rsync -av statclub:www-root/media backups/$d/
