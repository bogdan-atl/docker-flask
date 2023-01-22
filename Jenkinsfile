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
        stage('stop containers') {
            steps {
                sh 'sudo docker stop $(sudo docker ps -aq)'
            }
        }
        stage('delete old containers') {
            steps {
                sh 'sudo docker rm $(sudo docker ps -aq)'
            }
        }
        stage('Build...') {
            steps {
                sh 'sudo docker build .'
            }
        }
    }
}
