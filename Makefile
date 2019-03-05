.PHONY: push
push:
	rsync -av --exclude '.git*' --exclude 'Makefile' --exclude 'venv' --exclude 'db.sqlite3' --exclude 'media' --exclude 'backups' . statclub:www-root/
