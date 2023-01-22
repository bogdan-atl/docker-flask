pipeline {
    agent {
        label "NODE-slave"
    }

    stages {
        stage('testing job') {
            steps {
                sh 'sudo docker ps -a'
            }
        }
    }
}
