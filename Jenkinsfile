pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout your Terraform code from a version control system
                git 'https://github.com/sree-hpux/myproject.git'
            }
        }

        stage('Terraform Init') {
            steps {
                // Initialize Terraform in the working directory
                sh 'terraform init'
            }
        }

        stage('Terraform Apply') {
            steps {
                // Apply the Terraform configuration and create the EC2 instance
                sh 'terraform apply -auto-approve'
            }
        }

        stage('Terraform Destroy') {
            steps {
                // Destroy the created resources (optional)
                sh 'terraform destroy -auto-approve'
            }
        }
    }
}
