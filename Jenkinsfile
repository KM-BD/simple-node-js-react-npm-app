pipeline {
    agent any

    tools {
        nodejs 'NodeJS 14.x'
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
        stage('Start Application') {
            steps {
                sh 'npm start'
            }
        }
    }
}
