pipeline {
   agent any
   stages {
      stage('Build') {
         steps {
            echo 'BUILDING PROJECT'
            withMaven(maven: 'mvn') { 
               sh 'mvn package'
            }
         }
      }
      stage('Test') {
         steps {
            echo 'Testing in process'
         }
      }
      stage('Deploy') {
         steps {
            echo 'Deployment in process'
         }   
      }
   }
}
