pipeline{
	agent any
	
	stages{
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
