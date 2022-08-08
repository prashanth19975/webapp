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
	        stage('maven clean compile package') {
            steps {	 
			    sh 'mvn clean compile package'
				}
				}			
	        stage("Build Dokcer Image") {
	    steps {		
                            sh "docker build -t prashanth19975/tomcat:${buildNumber} ."
	                        }
		                }
		stage("Docker Login and push") {
	    steps {
		       withCredentials([string(credentialsId: 'prashanth19975', variable: 'dockerhubpwd')]) {
			    sh "docker login -u prashanth19975 -p ${dockerhubpwd}"		 
                            sh "docker push prashanth19975/tomcat:${buildNumber} "
			        }
		                }	
		                }
		stage("Deploy application using docker container in docker"){
	    steps {
			sshagent(['DOCKER_DEV_SSH']) {
			    sh "ssh -o strictHostkeyChecking=no ec2-user@35.154.138.109"
			    sh "ssh -o strictHostkeyChecking=no ec2-user@35.154.138.109 docker run -itd -p 8081:8080 --name tomcatcontainer prashanth19975/tomcat:${buildNumber}"
			       }
	                       }
		}
            }
}	
