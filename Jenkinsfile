pipeline {
    agent {
        label "NODE-slave"
    }

    stages {
        stage('docker containers') {
            steps {
                sh 'sudo docker ps -a'
            }
        }
    }
    stages {
        stage('stop docker container') {
            steps {
                sh 'sudo docker stop $(sudo docker ps -aq)'
            }
        }
    }
    stages {
        stage('stop docker build') {
            steps {
                sh 'sudo docker build .)'
            }
        }
    }
}
