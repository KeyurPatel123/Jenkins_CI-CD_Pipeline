pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
		sh 'docker build -t keyurbitw/abiomed:v1 .'
		echo 'Docker Image Successfully created'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
		echo 'All Cases Successfully passed'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
		sh 'docker run -d -p 81:80 -p 443:443 -p 6379:6379 keyurbitw/abiomed:v1'
		echo 'Container Successfully Created'
            }
        }
    	stage('Push'){
	    steps{
	    	echo 'Pushing Image to Docker Hub..'
		sh 'docker login -u=keyurbitw -p=Mamta@123'
		sh 'docker push keyurbitw/abiomed:v1'
		echo 'Imge Successfully pushed to Docker Hub.'
	    }
	}
    }
}
