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
             sh "pwd && cd target"
             sh "sudo ln -s grizzly-store-spring-1.0-SNAPSHOT.jar /etc/init.d/grizzly"
             sh "service grizzly start"
		    /* sh 'mvn spring-boot:run'  java -jar grizzly-store-spring-1.0-SNAPSHOT.jar*/
         }
      }
   }
}
