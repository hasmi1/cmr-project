pipeline {
    agent any
    stages{
         stage("Git Checkout"){
          steps{
           git branch: 'main', credentialsId: 'fd3cf5a0-d16d-4450-bd6d-bc09990c1711', url: 'https://github.com/hasmi1/cmr-project.git'
            }
          }           
         stage("Maven Build"){
          steps{
              sh "mvn clean install"
                }
               }
         stage("Building image"){
          steps{
             sh "docker build -t cmr-repo/myapp:1.0 ."
             withCredentials([string(credentialsId: 'Docker_HUB_CREDENTIALS', variable: 'Docker_HUB_CREDENTIALS')]) {
             sh "docker login -u ramyakiran -p ${Docker_HUB_CREDENTIALS}"
             sh "docker tag cmr-repo/myapp:1.0 ramyakiran/cmr-repo:1.0"
             sh "docker push ramyakiran/cmr-repo:1.0" 
                    } 
                 }
          }         
    }      
}
