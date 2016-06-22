#!/usr/bin/env bash

python manage.py migrate                  # Apply database migrations
python manage.py collectstatic --noinput  # Collect static files

if [ "$1" = 'runserver' ]; then
   echo runserver
   python manage.py runserver 0.0.0.0:8000
else
   echo uwsgi
   exec uwsgi --wsgi-file dj_main/wsgi.py \
                           --memory-report \
                           --master \
                           --processes 2 \
                           --threads 1 \
                           "$@"
#                               --stats :9191 \
#                               --socket :8000
fi
