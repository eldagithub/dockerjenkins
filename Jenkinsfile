node {

    def newApp
    def registry = 'eldahni2019/ocpregistry'
    def registryCredential = 'dockerhub'
	
        stage('Clone') {
                checkout scm
        }

	stage('Building image & Registring image') {
                    docker.withRegistry( 'https://registry.hub.docker.com/' + registry, registryCredential ) {
		    def buildName = registry + ":$BUILD_NUMBER"
			newApp = docker.build buildName
			newApp.push()
			//newApp.push 'latest'
        }
	}

	
	stage('Removing image') {
        sh "docker rmi registry.hub.docker.com/$registry:$BUILD_NUMBER"
        sh "docker rmi $registry:$BUILD_NUMBER"
        //sh "docker rmi registry.hub.docker.com/$registry:latest"
        
    }

	

	
}
