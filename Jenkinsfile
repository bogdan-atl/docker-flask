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
                echo 'sudo docker stop $(sudo docker ps -aq)'
            }
        }
        stage('delete old containers') {
            steps {
                echo 'sudo docker rm $(sudo docker ps -aq)'
            }
        }
        stage('Build...') {
            steps {
                echo 'sudo docker build .'
            }
        }
    }
}
