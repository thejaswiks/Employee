pipeline{
    agent any{
        tools{
            maven 'maven'
        }
        stages{
            stage('source from git'){
                steps{
                    
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
}
