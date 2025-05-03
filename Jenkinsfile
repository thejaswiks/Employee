pipeline{
    agent any
        tools{
            maven 'maven'
        }
        stages{
            stage('source from git'){
                steps{
                    git 'https://github.com/thejaswiks/Employee.git'
                }
            }
        
            stage('clean')
            {
                steps{
                    sh 'mvn clean'
                }
            }
            stage('package')
            {
                steps{
                    sh 'mvn package'
                }
            }
        }
    
}
