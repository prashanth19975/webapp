
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
	

      }
}	
	
	      
