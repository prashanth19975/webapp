
pipeline {
	agent any
      stages {
	   stage ('git checkout') {
             steps {
                  checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/prashanth19975/webapp.git']]])
             }
             }
          stage ('maven version') {
              steps {
                   sh 'maven --version'
             }
             }
           stage ('maven clean compile test package')
               steps {
                    sh 'maven clean compile test package'
              }
              }
        }
}
