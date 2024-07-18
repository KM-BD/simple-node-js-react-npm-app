pipeline {
    agent {
        docker {
            image 'node:14'
            args '-p 3000:3000' // Adjust the port as necessary
        }
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }
        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }
        stage('Test') {
            steps {
                sh 'npm test'
            }
        }
        stage('Start Application') {
            steps {
                sh 'npm start &'
            }
        }
    }
    post {
        always {
            echo 'Cleaning up...'
            sh 'kill $(lsof -t -i:3000)' // Clean up: adjust port number as needed
        }
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
