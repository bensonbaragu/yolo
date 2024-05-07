# Use the official MongoDB image from Docker Hub
#FROM mongo:latest
FROM mongodb/mongodb-community-server:7.0.5-ubi8
# Expose the default MongoDB port (27017)
EXPOSE 27017

# Start MongoDB when the container starts
CMD ["mongod"]
