pipeline{
	agent any
	stages{
		stage('Build Application'){
		steps{
			bat 'mvn clean install'
		}
		}
		stage('Munit Testing'){
		steps{
			bat 'mvn test'
		}
		}
	}
}
