pipeline {
    agent any

  
    stages {
        stage('Checkout') {
            steps {
                // Checkout code from the Git repository
                #git 'https://github.com/your-repo/your-terraform-configs.git'
				git clone
            }
        }

        stage('Terraform Init') {
            steps {
                // Initialize Terraform
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                // Create a Terraform plan
                sh 'terraform plan -out=tfplan'
            }
        }

        stage('Terraform Apply') {
            steps {
                // Apply the Terraform plan
                sh 'terraform apply -auto-approve tfplan'
            }
        }
    }

    post {
        always {
            // Clean workspace after completion
            cleanWs()
        }
        success {
            // Notify on success
            echo 'Infrastructure applied successfully!'
        }
        failure {
            // Notify on failure
            echo 'Infrastructure application failed!'
        }
    }
}
