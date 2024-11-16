#!/usr/bin/env bash
# exit on error
set -o errexit

pip install -r requirements.txt

# Create staticfiles_build directory
mkdir -p staticfiles_build

# Create staticfiles directory if it doesn't exist
mkdir -p staticfiles

python manage.py collectstatic --no-input
python manage.py migrate 