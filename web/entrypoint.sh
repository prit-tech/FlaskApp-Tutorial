#!/bin/sh

# see http://docs.gunicorn.org/en/stable/settings.html

/usr/local/bin/gunicorn \
    flaskapp:app \
    --bind :8000 \
    --workers 2 \
    --access-logfile logs/gunicorn-access.log \
    --error-logfile logs/gunicorn-error.log \
    --log-level info \
    --timeout 3600 \
    --reload
