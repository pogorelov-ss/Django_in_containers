 run:
 
 CHANGE PROJECT_PATH in 
  
    ./docker/local/.env
 
 ```( cd docker/local && exec docker-compose up )```
 
 ```docker exec -i -t Django /bin/bash```
 
 remove ALL containers:
   
   ```docker rm $(docker ps -a -q)```