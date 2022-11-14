
pipeline {
	agent any
      stages {
	   stage ('git checkout') {
             steps {
                  checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/prashanth19975/webapp.git']]])
             }
             }
          stage ('mvn version') {
              steps {
                   sh 'mvn --version'
             }
             }
	      stage ('mvn clean compile test package') {
               steps {
                    sh 'mvn clean compile test package'
              }
              }
        }
}
