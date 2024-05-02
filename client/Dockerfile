#Stage 1 - builder 
#Base image 

FROM node:13-alpine as builder 

#setup working directory  
WORKDIR /app

#copy dependecies to the container 
COPY package.json package.json 

#install dependencies 
RUN npm install 

#copy the rest of the files 
COPY . .

#Stage 2 - prod 
FROM node:13-alpine as prod

#setup working directory 
WORKDIR /app

#copy from builder to prod 
COPY --from=builder /app . 

#expose container to port 3000 
CMD ["npm","start"]



