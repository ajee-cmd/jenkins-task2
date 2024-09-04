pipeline {
    agent any
    
    environment {
        // GIT_URL = 'https://github.com/christine-robinson/zen-devops-webhook-test.git'
        GIT_URL = '<your clone url>'
    }
    
    stages {
        stage('Checkout') {
            steps {
                checkout scmGit(
                    branches: [[name: '*/main']], 
                    extensions: [], 
                    userRemoteConfigs: [[url: "${env.GIT_URL}"]]
                )
            }
        }
        stage('List Files'){
            steps {
                bat 'dir'
            }
        }
    }
}
