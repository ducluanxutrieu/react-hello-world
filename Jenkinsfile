pipeline {
  agent {
    docker {
      image 'maven:3.8.3-amazoncorretto-17'
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
