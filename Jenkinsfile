
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
		      
      }   
}	
