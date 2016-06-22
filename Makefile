export DJANGO_SETTINGS_MODULE=dj_main.settings
export RDS_DB_NAME=test_db
export RDS_USERNAME=root
export RDS_PASSWORD=pass
export RDS_HOSTNAME=postgre
export RDS_PORT=5432
export DJ_DEBUG=1
export CACHE_HOST=redis
export ALLOWED_HOST=localhost
export PROJECT_PATH=/home/pssu/work/Django_projects/Django_in_containers
export NGINX_CONF=conf.d

build:
	docker-compose build

up-http:
	docker-compose up
