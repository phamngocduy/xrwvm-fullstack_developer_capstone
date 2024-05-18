#!/bin/bash

pip3 install virtualenv
virtualenv djangoenv
source djangoenv/bin/activate

pip3 install -U -r requirements.txt

python3 manage.py makemigrations
python3 manage.py migrate

python3 manage.py runserver
alias py=python3
