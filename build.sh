#!/usr/bin/env bash
# exit on error
set -o errexit

pip install -r requirements.txt

# Create staticfiles_build directory
mkdir -p staticfiles_build

# Copy your existing static files to the new directory
cp -r staticfiles/* staticfiles_build/

python manage.py collectstatic --no-input
python manage.py migrate 