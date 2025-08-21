pipeline {
    agent any
    tools { nodejs 'node18' }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Rakesh9894/Assessment-Ci-Cd.git'
            }
        }
        stage('Install') {
            steps {
                sh 'if [ -f package-lock.json ]; then npm ci; else npm install; fi'
            }
        }
        stage('Test') {
            steps {
                sh 'echo "No testscases..."'
            }
        }
        stage('Deploy') {
            steps {
                sh '''
                pm2 describe nodeapp || pm2 start index.js --name nodeapp
                pm2 restart nodeapp
                pm2 save
                '''
            }
        }
    }
}
