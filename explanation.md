# Ansible playbook 

- The ansible playbook does the following actions:- 
        * Updates apt library 
        * Installs docker and docker-compose
        * Builds and runs 3 containers : - 
                - client 
                - backend 
                - database 

- When you run "vagrant up" in the terminal a geerlingguy/ubuntu2004 base virtual machine is spun up 
  and the tasks in the ansible playbook are run.



# KUBERNETES
This project is about running the yolo client, backend and database container on GKE cluster 

 
## Step 1 - Setup default computer zone
* This is the regional location where the cluster will operate
* Setup default region
    - gcloud config set compute/region us-east1

* Set up default zone
   - gcloud config set compute/zone us-east1-d

## Step 2 - Create cluster 
   - gcloud container clusters create --machine-type=e2-medium --zone=us-east1-d yolo-cluster

## Step 3 - Authenticate for cluster created
   - gcloud container clusters get-credentials yolo-cluster

## Step 4 - Clone yolo repo into GCP 

## Run the manifest files 

// creating pvc 
 kubectl apply -f pvc.yaml

//creating deployments
 kubectl apply -f backend.yaml -f client.yaml 

//creating statefulset for mongodb 
 kubectl apply -f  mongodb.yaml 

//creating services 
 kubectl apply -f backend_svc.yaml -f client_svc.yaml -f mongodb_svc.yaml











