pipeline{
	agent any
	
	stages{
		stage('Deploy to Dev'){
			environment{
                	anypoint_userName = credentials('anypoint_usrName')
			anypoint_passwrd = credentials('anypoint_password')
            		}
			steps{
				bat 'echo "Deploy into Dev"'
				git branch: 'devlop', credentialsId: 'cabbdcc2-ae95-42d9-a016-50786bff5726', url: 'https://github.com/PradeshCnx/mule4Test.git'
				bat "mvn -Dmaven.test.failure.ignore-true clean deploy -DmuleDeploy -DskipTests -Dmule.version=4.4.0 -Danypoint.username=$anypoint_userName -Danypoint.password=$anypoint_passwrd -Denv=Sandbox -Dappname=s3buckect -Dbusiness=concentrix -DvCore=Micro -Dworkers=1 -DaltDeploymentRepository=myinternalrepo::default::file:///C:/muleRepo"

			}
		}
		stage('Deploy to Stage'){
			
			environment{
                	nexus_userName = 'admin'
					nexus_passwrd = 'admin123'
            		}
			steps{
				nexusArtifactUploader(
                 nexusVersion: 'NEXUS_VERSION',
                 protocol: 'http',
                 nexusUrl: 'http://localhost:8081/nexus/content/repositories/releases/',
                 groupId: "org.sonatype.plugins",
                 version: "1.5.1",
                 repository: 'releases',
                 credentialsId: 'nexus',
                artifacts: [
                                [artifactId: pom.artifactId,
                                classifier: '',
                                file: artifactPath,
                                type: pom.packaging],
                                [artifactId: pom.artifactId,
                                classifier: '',
                                file: "pom.xml",
                                type: "pom"]
                 ]
         )
     }
					
			
		}
	}
}
