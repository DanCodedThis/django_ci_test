#!/bin/bash

# Install Python dependencies
pip install -r requirements.txt

# Apply database migrations
python manage.py makemigrations
python manage.py migrate

# Set environment variables
export DJANGO_SUPERUSER_USERNAME="admin"
export DJANGO_SUPERUSER_EMAIL="admin@gmail.com"
export DJANGO_SUPERUSER_PASSWORD="12345"

# Create superuser
python manage.py createsuperuser --noinput

# Unset environment variables
unset DJANGO_SUPERUSER_USERNAME
unset DJANGO_SUPERUSER_EMAIL
unset DJANGO_SUPERUSER_PASSWORDf