
pipeline{
  agent any
  tools {
       maven 'M2_HOME'
   }
 environment {
   testvar = 'Sanbox'
 }
 stages {
   
 stage ('Build'){
 		steps {
          script{
 				 
                 bat "mvn clean install"
                
          }	
 		}
 	}
	stage ('Deploy'){
 		steps {
          script{
 				 
 				bat "deploy -DmuleDeploy -DskipTests -Dmule.version=4.4.0 -Danypoint.username=PradeshTrix -Danypoint.password=P@$$word@123 -Denv=Sandbox -Dappname=awsS3Buckect -Dbusiness=concentrix -DvCore=Micro -Dworkers=1 -DaltDeploymentRepository=myinternalrepo::default::file:///C:/muleRepo"
          }
        }
 }

}
}
