pipeline {
   agent any
   stages {
      stage('Build') {
         steps {
            echo 'BUILDING PROJECT!!'
            withMaven(maven: 'mvn') {
            	sh 'mvn -B -DskipTests clean package'
            }
         }
      }
      stage('Test') {
            steps {
		echo 'Testing in progress'
                sh 'mvn test' 
            }
            post {
                always {
                    junit 'target/surefire-reports/*.xml' 
                }
            }
      }
      stage('Deploy') {
         steps {
            	echo 'Deployment in process'
		sh 'mvn spring-boot:run'
         }
      }
   }
}
