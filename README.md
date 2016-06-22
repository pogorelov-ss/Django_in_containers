 here I learning to run Django app in containers in a right way :)
 
 run:
 
 for django runserver
 
 ```docker-compose up```
 
 for uwsgi
 
 ```docker-compose-uwsgi up```
 
 ssh to django 
 ```docker exec -i -t django-app-http /bin/bash```
 or
 ```docker exec -i -t django-app-uwsgi /bin/bash```
 
 remove ALL containers:
   
   ```docker rm $(docker ps -a -q)```
   
   remove composed containers
   ``` docker-compose rm ```