# Stage 2 Project details 
- When you run "terraform plan" the following will happen:
    * An EC2 machine will provisioned. 
    * The EC2 machine will be configure to run 3 containers: - 
            - client 
            - backened
            - database 

- The EC2 machine is provision using terraform. 
- Terraform the runs the ansible playbook to install docker and docker-compose. 
- Docker-compose is then run which builds and runs the 3 containers. 