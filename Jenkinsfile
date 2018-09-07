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
		    sh "pwd && cd target && ls && cd .. && ls"
		    sh "JENKINS_NODE_COOKIE=dontKillMe mvn spring-boot:run &"
		    /* sh 'mvn spring-boot:run'  java -jar grizzly-store-spring-1.0-SNAPSHOT.jar*/
         }
      }
   }
}
