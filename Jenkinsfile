pipeline {
    agent { label 'ec2' }

    stages {
        stage('Build') {
            steps {
                // Run the build script
                echo 'build'
            }
        }
        stage('Test') {
            steps {
                // Run the test script
                echo 'test'
            }
        }
        stage('Deploy') {
            steps {
                // Run the deploy script
                echo 'deploy'
            }
        }
    }
   post {
        success {
            script {
                slackSend(channel: "iti-isi", message: "first pipeline send to slack passed successfully")
            }
        }
    }
    
}

