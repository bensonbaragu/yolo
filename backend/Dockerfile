#Stage 1 build
#Base image 
FROM node:13-alpine as builder 

#setup working directory 
WORKDIR /app 

#copy dependencies to the container
COPY package.json package.json

#install the dependencies 
RUN npm install 

#Copy the rest of the files to the container 
COPY . .

#Stage 2 build 
FROM node:13-alpine as prod 

#setup working directory 
WORKDIR /app 

#copy files from stage 1 builder 
COPY --from=builder  /app .


# Install MongoDB and expose port
# RUN apk add --no-cache mongodb-tools
# EXPOSE 27017
EXPOSE 5000


CMD ["npm","start"]  


