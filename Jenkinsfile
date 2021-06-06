node {

    def newApp
    def version = "1.0.0.$BUILD_NUMBER"
    def registry = 'eldahni2019/ocpregistry'
    def registryCredential = 'dockerhub'
	
        stage('Clone') {
                checkout scm
        }

	stage('Building image & Registring image') {
                    docker.withRegistry( 'https://registry.hub.docker.com/' + registry, registryCredential ) {
		    def buildName = registry + ":" + version 
			newApp = docker.build buildName
			newApp.push()
			//newApp.push 'latest'
        }
	}

	
	stage('Removing image') {
        sh "docker rmi registry.hub.docker.com/$registry:" + version
        sh "docker rmi $registry:" + version
        //sh "docker rmi registry.hub.docker.com/$registry:latest"
        
    }

	

	
}
