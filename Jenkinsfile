node {

    def newApp
    def registry = 'eldahni2019/ocpregistry'
    def registryCredential = 'dockerhub'
	
        stage('Clone') {
                checkout scm
        }

	stage('Building image') {
        docker.withRegistry( 'https://docker.com/' + registry, registryCredential ) {
		    def buildName = registry + ":$BUILD_NUMBER"
			newApp = docker.build buildName
			newApp.push()
        }
	}
	stage('Registring image') {
        docker.withRegistry( 'https://docker.com/' + registry, registryCredential ) {
    		newApp.push 'latest2'
        }
	}
    stage('Removing image') {
        sh "docker rmi $registry:$BUILD_NUMBER"
        sh "docker rmi $registry:latest"
    }
    
}
