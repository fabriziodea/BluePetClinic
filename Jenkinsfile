pipeline {
  agent any

  environment {
    TF_WORKSPACE = 'jenkins' 
    TF_IN_AUTOMATION = 'true'
    AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
    AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
  }
  stages {
    stage('Terraform Init') {
      steps {
        sh "terraform init -input=false"
        
      }
    }
    stage('Terraform Plan') {
      steps {
        sh "terraform plan -out=tfplan -input=false "
      }
    }
    stage('Terraform Apply') {
      steps {
        sh "terraform apply -input=false tfplan"
      }
    }
  }
}