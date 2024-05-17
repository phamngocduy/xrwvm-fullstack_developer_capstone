#!/bin/bash

pip install virtualenv
virtualenv djangoenv
source djangoenv/bin/activate

pip install -U -r requirements.txt

python manage.py makemigrations
python manage.py migrate

python manage.py runserver
