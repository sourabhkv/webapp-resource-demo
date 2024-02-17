# webapp-resource-demo
WebApp resource demo


## Guide
```powershell
virtualenv venv
venv\scripts\activate
pip install django
pip freeze > requirements.txt
django-admin startproject webapp
cd webapp
python manage.py startapp homepage
python manage.py makemigrations
python manage.py migrate
python manage.py runserver
```

## docker guide
```powershell
docker build -t mywebsite .
docker tag mywebsite sourabhkv/mywebsite:1.0
docker push sourabhkv/mywebsite:1.0
```