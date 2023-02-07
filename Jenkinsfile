
pipeline {
    agent any
      stages{
	   stage ('git checkout') {
             steps {
                 git 'https://github.com/prashanth19975/webapp.git'
	     }
	     }	   
	     stage ("mvn --version") {
	      steps {
		   sh "mvn --version"
	      }
	     }
	      stage ("mvn clean compile test package") {
		  steps {
		     sh "mvn clean compile test package"
		  }
	      }    
	      stage ("mvn deploy") {
		  steps {     
                  sh "mvn deploy"
		  }
	          }   
	      stage ("deploy to tomcat") {
                 steps {
	            deploy adapters: [tomcat9(credentialsId: 'TOMCAT', path: '', url: 'http://65.2.35.118:8080/')], contextPath: 'feb1-pipeline', war: '**/*.war' 
		 }
	        }
      }
}	
	
	      
