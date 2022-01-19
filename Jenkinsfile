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
        nginx_IP = sh(returnStdout: true, script: "terraform output nginx-Public_IP").trim()}{
       /* sh "export nginx_IP=${terraform output -raw nginx_Public_IP}" */
        sh "echo ${nginx_IP}"
       /* sh "export worker_IP=${terraform output -raw worker_Public_IP}" */
        worker_IP = sh(returnStdout: true, script: "terraform output nginx-Public_IP").trim()}{
        sh "echo ${worker_IP}"
        /* sh "export manager_IP=${terraform output -raw manager_Public_IP}" */
        manager_IP = sh(returnStdout: true, script: "terraform output manager-Public_IP").trim()}{
        sh "echo ${manager_IP}"
      
      }
 
      }
     
   }
}


      
