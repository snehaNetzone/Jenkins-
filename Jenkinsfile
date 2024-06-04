pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build JAR') {
            steps {
                sh 'mvn -B -DskipTests clean package' 
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build buildx -t my-spring-app .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run -d -p 9000:9000 my-spring-app'
            }
        }
    }
}
