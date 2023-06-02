pipeline {
  agent {
    docker {
      image 'gradle:6.7-jdk11'
      label 'kitchen'
    }
  }


  parameters {
    string(name: 'gitBranch', defaultValue: 'master', description: 'This is the first param')
  }

  stages {
        stage('Check node version') {
              steps {
                  sh 'mvn --version'
              }
           }
        stage('Install dependency') {
          steps {
            sh """
               echo "Git branch: ${params.gitBranch}"
               npm install
            """
          }
        }
       stage('Build package') {
          steps {
            sh '''
                npm run build
            '''
          }
        }
  }
}
