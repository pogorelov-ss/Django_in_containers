FROM python:3.4
ENV PYTHONUNBUFFERED 1
RUN mkdir /dj_app
WORKDIR /dj_app
ADD ./dj_app/requirements.txt /dj_app/
RUN pip install -r requirements.txt
EXPOSE 8000 9191
ENTRYPOINT ["uwsgi", "--socket", "127.0.0.1:8000", "--wsgi-file", "dj_main/wsgi.py", "--memory-report", "--master"]
CMD ["--processes", "4", "--threads", "2", "--stats", "127.0.0.1:9191"]