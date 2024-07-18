pipeline {
    agent any

    tools {
        nodejs 'NodeJS 14.x' // This should match the name you provided in the NodeJS configuration
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
            sh 'taskkill /F /IM node.exe' // Clean up Node.js processes
        }
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
