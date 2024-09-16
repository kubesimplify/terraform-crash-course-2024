# Practice Project - AWS Infrastructure with Terraform

This project sets up a simple cloud infrastructure using AWS and Terraform to deploy a Node.js application with a MySQL database. The infrastructure is designed to be scalable and secure, leveraging AWS services like EC2, S3, RDS, and VPC.

## Architecture Flow

1. **GitHub** hosts the **Node.js** application's code.
2. **Terraform** provisions the **AWS** infrastructure, including:
   - **EC2 instance** to run the Node.js application.
   - **RDS MySQL database** for data storage.
   - **S3 bucket** for file storage.
3. The **Node.js** application connects to the **RDS** database over **port 3306**, restricted by security groups for secure communication.
4. The application interacts with **Amazon S3** for uploading or retrieving files.
5. The whole setup runs within the default **VPC**, ensuring isolation and secure access to resources.

![architecture](https://github.com/user-attachments/assets/c4765ba9-e225-495e-b1a0-8d29d7e55f58)


## Getting Started

1. Add the Node Js application [source Code](https://github.com/verma-kunal/nodejs-mysql) in the directory:
    ```bash
    cd project
    git clone https://github.com/verma-kunal/nodejs-mysql.git ./app
    ```
2. Initialize the terraform project
    ```bash
    terraform init
    ```
3. Make relevant changes to the terraform code.
4. Apply the changes and provision the infrastructure:
    ```bash
    terraform apply
    ```
