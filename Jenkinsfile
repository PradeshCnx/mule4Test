pipeline{
	agent any
	stages{
		stage('Build Application'){
		steps{
			bat 'mvn clean install'
		}
		}
		stage('Deploye Application To Mulesoft CloudHub'){
		steps{
			bat 'mvn package deploy -DmuleDeploy'
		}
		}
	}
}
