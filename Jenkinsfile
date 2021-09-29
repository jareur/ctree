pipeline {
    agent any
    stages {
        stage('Preparation') {
            steps {
                echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
            }
        }
        stage('Build') {
            steps {
                sh 'make'
            }
        }
        stage('Test') {
            steps {
                sh 'make test && ./ctree | grep -v 2J' 
            }
        }
    }
    post {
        failure {
            sh 'echo "The build failed"'
        }
    }
}
