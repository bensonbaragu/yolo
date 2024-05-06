# Backend docker file 
## Builder stage  
- Used a multistage build 
- In the first stage - Builder
- The base image - node:13-alpine was used. 
    Reason: the node version required by the project was node v13.12.0
- Package dependencies were copied to the container and npm was installed 

## Prod stage 
- The files from the builder stage were copied to prod stage 
- Install mongodb-tools 
- Expose mongod and container to port 27017 and 5000 respectively 
- RUN npm start 

# Client docker file 

## Builder stage  
- Used a multistage build 
- In the first stage - Builder
- The base image - node:13-alpine was used. 
    Reason: the node version required by the project was node v13.12.0
- Package dependencies were copied to the container and npm was installed 
- The rest of the files copied to the container 

## Prod stage 
- The files from the builder stage were copied to prod stage 
- RUN npm start 

# Docker compose file 
- Docker compose file written to run the containers simultaneously. 