FROM python:3


RUN pip install django==5.0.7

COPY . .

RUN python manage.py migrate


CMD ["python","manage.py","runserver","0.0.0.0:8001"]


