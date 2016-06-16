FROM python:3.4
ENV PYTHONUNBUFFERED 1
RUN mkdir /dj_app
WORKDIR /dj_app
ADD ./dj_app/requirements.txt /dj_app/
RUN pip install -r requirements.txt
EXPOSE 8000 9191