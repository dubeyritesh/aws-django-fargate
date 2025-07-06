#!/bin/bash
python manage.py migrate --noinput
python manage.py collectstatic --noinput
exec gunicorn todo_project.wsgi:application --bind 0.0.0.0:8000
