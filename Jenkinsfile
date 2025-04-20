pipeline {
    agent any

    tools {
        maven 'maven'
    }

    environment {
        TOMCAT_HOME = "/opt/tomcat"  // Adjust this path as per your Tomcat installation
    }

    stages {
        stage("Build Preparation") {
            steps {
                sh 'mvn clean package'
            }
        }
        stage("Deploy") {
            steps {
                sh '''
                    echo "Stopping Tomcat..."
                    sudo systemctl stop tomcat

                    echo "Removing old WAR..."
                    sudo rm -rf $TOMCAT_HOME/webapps/mvn_arch3*

                    echo "Deploying new WAR..."
                    sudo cp target/mvn_arch3.war $TOMCAT_HOME/webapps/

                    echo "Starting Tomcat..."
                    sudo systemctl start tomcat
                '''
            }
        }
    }

    post {
        success {
            echo "Deployed successfully"
        }
        failure {
            echo "Failed to Deploy"
        }
    }
}
