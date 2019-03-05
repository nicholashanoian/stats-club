rsync -av --exclude '.git*' --exclude 'deploy.sh' --exclude 'venv' --exclude 'db.sqlite3' --exclude '.htaccess' \
	  . statclub:django-root/
rsync .htaccess statclub:www-root/
rsync -av ../www-root/static statclub:www-root/
