def buildNumber = BUILD_NUMBER
pipeline {	
    agent any
    stages {
        stage('git clone') {
            steps {
			   git credentialsId: 'admin', url: 'https://github.com/prashanth19975/webapp.git'
             }
             }
		stage('maven version') {
            steps {	 
			    sh 'mvn --version'
				}
				}
	        stage('maven clean') {
            steps {	 
			    sh 'mvn clean'
				}
				}			
		stage('maven validate') {
            steps {	 
			    sh 'mvn validate'
				}
				}				
		stage('maven compile') {
            steps {	 
			    sh 'mvn compile'
				}
				}		
		stage('maven test')    {
            steps {	 
			    sh 'mvn test'
				}
				}		
                stage('maven package') {
            steps {	 
			    sh 'mvn package'
				}
				}
	        stage("Build Dokcer Image") {
	    steps {		
                            sh "docker build -t prashanth19975/pipeline:${buildNumber} ."
	                        }
		                }
		stage("Docker Login and push") {
	    steps {
		       withCredentials([string(credentialsId: 'prashanth19975', variable: 'dockerhubpwd')]) {
			    sh "docker login -u prashanth19975 -p ${dockerhubpwd}"		 
                            sh "docker push prashanth19975/pipeline:${buildNumber} "
			        }
		                }	
		stage("Deploy application using docker container in docker"){
	    steps {
			sshagent(['DOCKER_DEV_SSH']) {
			    sh "ssh -o strictHostkey=no root@35.154.138.109"
			    sh "ssh -o strictHostkey=no root@35.154.138.109 docker run -d -p 8080:8080 --name myproject1container --image prashanth19975/pipeline:${buildNumber}"
			       }
	                       }
		}
            }
}	
