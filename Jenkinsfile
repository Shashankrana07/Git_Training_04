pipeline {
    agent any
    stages {
        stage('Build Application') {
            steps {
                sh 'mvn -f https://github.com/Shashankrana07/Jenkins_Upgradev3.git/java-tomact-sample/pom.xml clean package'
            }
            post {
                success{
                    echo "Now Archiving the Artifacts...."
                    archiveArtifacts artifacts: '**/*.war'
                }
            }
        }
        stage ('Create Tomcat Docker Image'){
            steps {
                sh 'docker build . -t dockersamplewebapp:${env.BUILD_ID}'
            }
        }
        }
    }
}