
pipeline{
  agent any
  tools {
       maven 'M2_HOME'
   }
 environment {
   testvar = ''
 }
 stages {
   
 stage ('Build'){
 		steps {
          script{
 				 configFileProvider([configFile(fileId: 'settings-mule-snapshot',variable: 'MAVEN_SETTINGS_XML')]) {
                        bat """mvn -s $MAVEN_SETTINGS_XML clean install"""
                }
          }	
 		}
 	}
	stage ('Deploy'){
 		steps {
          script{
 				 configFileProvider([configFile(fileId: 'settings-mule-snapshot',variable: 'MAVEN_SETTINGS_XML')]) {
 				bat """mvn -s $MAVEN_SETTINGS_XML -Dmaven.repo.local="~/.m2/repository" package mule:deploy"""
                archiveArtifacts(artifacts: '**/target/*.jar', onlyIfSuccessful: true, fingerprint: true)
 			
 		}
          }
        }
 }

}
}
