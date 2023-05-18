pipeline {
    agent any
    stages {
        stage("Checkout"){
            steps {
                git branch: 'main', url:"https://github.com/Inframous/jenkins_terra"
            }
        }
        stage("Terraform Init"){
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform Plan'){
            steps {
                sh 'terraform plan'
            }
        }
        stage('Terraform Apply'){
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
        stage("Terraform Graph"){
            steps {
                sh "terraform graph | dot -Tsvg > graph.svg"
            }
        }
        stage("Upload to S3"){
            sh "echo Uploading DEMO"
        }
    }
}