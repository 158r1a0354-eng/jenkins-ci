pipeline {
    agent any

    environment {
        IMAGE_NAME = "node-app"
        CONTAINER_NAME = "node-app-container"
    }

    stages {
        stage('Checkout') {
            steps {
                // Pull your code from GitHub
                git 'https://github.com/158r1a0354-eng/jenkins-ci.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                // Build Docker image using Dockerfile in repo
                sh "docker build -t ${IMAGE_NAME}:latest ."
            }
        }

        stage('Stop Existing Container') {
            steps {
                // Stop and remove the old container if it exists
                sh "docker rm -f ${CONTAINER_NAME} || true"
            }
        }

        stage('Run Docker Container') {
            steps {
                // Run your app in a container
                sh "docker run -d -p 3000:3000 --name ${CONTAINER_NAME} ${IMAGE_NAME}:latest"
            }
        }

        stage('Verify') {
            steps {
                // Optional: show running containers
                sh "docker ps"
            }
        }
    }
}
