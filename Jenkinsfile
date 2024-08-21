pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from the GitHub repository
                git 'https://github.com/Praniuk/CICD_pipeline_examplescript'
            }
        }

        stage('Build') {
            steps {
                echo 'Building the website...'
                // If you have a build script, run it here. For example:
                // sh './build.sh'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                // Add any tests for your site here. For example:
                // sh 'curl -Is http://localhost:30192/ | head -n 1'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying the website...'
                sh './deploy.sh'
            }
        }
    }

    post {
        always {
            echo 'Pipeline completed.'
        }
    }
}
