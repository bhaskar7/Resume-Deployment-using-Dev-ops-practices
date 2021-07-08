1. Make Sure your **Aws key** should be present in this folder
2. Change the **secret kay and private key from the aws_ec2.yml** folder
3. In the **master and slave role change the security group, AMI id, & etc...**
4. Put your docker image name in the **main.yml file**
5. Pre-requsite your local computer mmust have aws cli tools, terraform exe file.
6. configure your aws profile using **aws configure --profile profile_name** and enter your secret and private key.
7. run **terraform init** for plugins
8. run **terraform apply** to execute the file. 
