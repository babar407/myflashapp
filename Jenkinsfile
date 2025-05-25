pipeline {
    agent any

    environment {
        IMAGE_NAME = 'flask-lab-app'
        CONTAINER_NAME = 'flask-lab-container'
    }

    stages {
        stage('Clone Repo') {
            steps {
                 git branch: 'main', url: 'https://github.com/babar407/myflashapp.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t ${IMAGE_NAME} .'
            }
        }

        stage('Deploy Container') {
            steps {
                sh '''
                    docker rm -f ${CONTAINER_NAME} || true
                    docker run -d --name ${CONTAINER_NAME} -p 5000:5000 ${IMAGE_NAME}
                '''
            }
        }
    }
}
