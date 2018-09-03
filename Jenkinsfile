pipeline {
   agent any
   stages {
      stage('Build') {
         steps { 
            echo 'BUILDING PROJECT'
            sh 'mvn package'
         }
      }
   }
}
