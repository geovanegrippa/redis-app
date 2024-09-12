pipeline {
    agent any
    stages {
        stage('build da imagem docker') {
            steps {
                sh 'docker build -t devops/app .'
            }
        }
        stage('subir docker compose - redis e app') {
            steps {
                sh 'dcoker-compose up --build -d'
            }
        }
        stage('sleep para subida de containers') {
            steps {
                sh 'sleep 10'
            }
        }
        stage('teste da aplicação') {
            steps {
                sh 'teste-app.sh'
            }
        }

    }

}