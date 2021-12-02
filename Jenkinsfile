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
		stage('sonarscan') {
            steps {	 
			    sh 'mvn sonar:sonar -Dsonar.host.url=http://18.223.155.93:9000 -Dsonar.login=b0bbfa70e82de203f64db8fbc7e4eb2876975d8c'
				}
				}		
		stage('maven compile') {
            steps {	 
			    sh 'mvn compile'
				}
				}		
		stage('maven test') {
            steps {	 
			    sh 'mvn test'
				}
				}		
                stage('maven package') {
            steps {	 
			    sh 'mvn package'
				}
				}
	        stage('maven deploy') {
            steps {	 
			    sh 'mvn deploy'
				}
				}
	}

}	
