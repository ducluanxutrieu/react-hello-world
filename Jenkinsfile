pipeline {
   agent {
      label "slave"
    }

  parameters {
    string(name: 'gitBranch', defaultValue: 'master', description: 'This is the first param')
  }

  stages {
        stage('Check node version') {
              steps {
                  sh 'npm --version'
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
