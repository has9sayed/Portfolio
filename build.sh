#!/usr/bin/env bash
# exit on error
set -o errexit

pip install -r requirements.txt

# Create staticfiles directory
mkdir -p staticfiles_build
python manage.py collectstatic --no-input