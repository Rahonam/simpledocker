#!/usr/bin/sh
#Django admin user credentials
export SU_NAME="manohar"
export SU_EMAIL="manu@hd.com"
export SU_PASSWORD="1234"
echo "---------------------------------"
echo "making migrations..."
python manage.py makemigrations
echo "migrations are ready to be deployed"
echo "---------------------------------"
echo "deploying DB changes..."
python manage.py migrate
echo "creating Django super user..."
python manage.py initadmin
echo "starting server"

python manage.py runserver 0.0.0.0:8000
exec "$@"