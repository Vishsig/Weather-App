pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Get the code from the repository
                checkout scm
                echo 'Checking out the code from repository'
            }
        }

        // If you have tests, include this stage
        stage('Test') {
            steps {
                // Run your tests here
                // Example: sh 'npm test'
                echo 'Running tests...'
                echo 'Tests finished...'
            }
        }

        stage('Deploy') {
            steps {
                // Deploy your application
                // This will depend on how you're hosting your web app
                echo 'Deploying application...'
                // Example: sh './deploy.sh'
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed.'
        }
    }
}
