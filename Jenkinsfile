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
                    sh 'mvn clean deploy -s Settings.xml' 
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
