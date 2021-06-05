node{
  def app
    environment {
      registry = "gustavoapolinario/docker-test"
      registryCredential = 'dockerhub'
      dockerImage = ''
    }
	
    stage('Clone') {
        checkout scm
    }

    stage('Building image') {
          dockerImage = docker.build("elmos/nginx") registry + ":$BUILD_NUMBER"
    }
	
    stage('Deploy Image') {
            docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
    }
    stage('Remove Unused docker image') {
        sh "docker rmi $registry:$BUILD_NUMBER"
    }

	
    stage('Test image') {
        docker.image('elmos/nginx').withRun('-p 80:80') { c ->
        sh 'docker ps'
        sh 'curl localhost'
	     }
    }
}

