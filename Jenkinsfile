pipeline {
   agent any
   stages {
      stage('Build') {
         steps {
            echo 'BUILDING PROJECT'
            withMaven(maven: 'mvn') { 
               sh 'mvn package'
               sh 'mvn exec:java'
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
