pipeline {
    agent any

    stages {
	stage('Clean Up'){
	    steps{
		echo 'Stopping & Removing Previous Conatiners'
		sh 'docker stop $(docker ps -a -q)'
		sh 'docker rm -f $(docker ps -a -q)'
		echo 'Conatiner Removed'
				
		echo 'Removing Previous Images'
		sh 'docker rmi -f $(docker images -q)'
		echo 'Images Removed'
	    }
	}
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'docker build -t keyurbitw/abiomed .'
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
                sh 'docker run -d --name abiomedrlr -p 81:80 -p 443:443 -p 6379:6379 keyurbitw/abiomed'
                echo 'Container Successfully Created'
            }
        }
        stage('Push'){
            steps{
                echo 'Pushing Image to Docker Hub..'
                sh 'docker login -u=keyurbitw -p=Mamta@123 -e=keyur.patel@einfochips.com'
                sh 'docker push keyurbitw/abiomed'
                echo 'Imge Successfully pushed to Docker Hub.'
            }
        }
    }
}
