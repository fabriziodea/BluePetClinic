pipeline {
  agent any

  environment {
    TF_WORKSPACE = 'jenkins' 
    TF_IN_AUTOMATION = 'true'
    AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
    AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    def nginx_IP
    def worker_IP
    def manager_IP
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
        sh "terraform apply -input=false tfplan" }
      {nginx_IP = sh(returnStdout: true, script: "terraform output nginx_public_IP").trim()}
      {manager_IP = sh(returnStdout: true, script: "terraform output manager_public_IP").trim()}
       {worker_IP = sh(returnStdout: true, script: "terraform output worker_public_IP").trim()
      }
    }
    stage('Print IP adresses') {
      steps {
         sh 'echo ${nginx_IP}'
         sh 'echo ${worker_IP}' 
         sh 'echo $(manager_IP}' 
      }} 
      }
}
   
      
