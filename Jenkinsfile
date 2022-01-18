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
        sh "terraform apply -input=false tfplan" }
    }
    stage('Export IPs') {
      withEnv([ 
        'export nginx_IP=$(terraform output -raw nginx_Public_IP)' , 
        'export worker_IP=$(terraform output -raw worker_Public_IP)' , 
        'export manager_IP=$(terraform output -raw manager_Public_IP})'])
        def IPs = sh(script: 'echo $nginx_IP'; 'echo $worker_IP'; 'echo $manager_IP')
                 echo IPs    

     }
   }
  }
}

      
