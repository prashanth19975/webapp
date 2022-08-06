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
                            sh "docker build -t prashanth19975/java-web-app:${buildNumber} ."
		                }
            }
}	
