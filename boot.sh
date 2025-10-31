#!/bin/bash
# Boot script for Flask + Gunicorn

set -e
echo "Starting Gunicorn server..."
exec gunicorn -b :5000 --access-logfile - --error-logfile - main:app
