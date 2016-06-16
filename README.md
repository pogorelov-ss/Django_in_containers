 here I learning to run Django app in containers in a right way :)
 
 run:
 
 CHANGE PROJECT_PATH in 
  
    .env file
 
 ```docker-compose up```
 
 ```docker exec -i -t Django /bin/bash```
 
 remove ALL containers:
   
   ```docker rm $(docker ps -a -q)```