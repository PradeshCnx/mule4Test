pipeline{
	agent any	
	stages{
		stage('Build'){
			steps{
				git branch: 'main', credentialsId: 'cabbdcc2-ae95-42d9-a016-50786bff5726', url: 'https://github.com/PradeshCnx/mule4Test.git'
				bat "mvn -Dmaven.test.failure.ignore-true clean package"
			}
		}
		stage('Test'){
			steps{
				git branch: 'main', credentialsId: 'cabbdcc2-ae95-42d9-a016-50786bff5726', url: 'https://github.com/PradeshCnx/mule4Test.git'
				bat "mvn -Dmaven.test.failure.ignore-true clean test"
			}
		}
		stage('Deploy'){
			steps{
				git branch: 'main', credentialsId: 'cabbdcc2-ae95-42d9-a016-50786bff5726', url: 'https://github.com/PradeshCnx/mule4Test.git'
				bat "mvn -Dmaven.test.failure.ignore-true clean deploy -DmuleDeploy -DskipTests -Dmule.version=4.4.0 -Danypoint.username=PradeshTrix -Danypoint.password=Mulesoft-123 -Denv=Sandbox -Dappname=awsS3Buckect -Dbusiness=concentrix -DvCore=Micro -Dworkers=1 -DaltDeploymentRepository=myinternalrepo::default::file:///C:/muleRepo"
			}
		}
	}

}
