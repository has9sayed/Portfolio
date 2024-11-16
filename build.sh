#!/usr/bin/env bash
# exit on error
set -o errexit

pip install -r requirements.txt

# Create static directory if it doesn't exist
mkdir -p static

# Create staticfiles_build directory
mkdir -p staticfiles_build

python manage.py collectstatic --no-input