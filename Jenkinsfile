pipeline {
   agent {
      label "slave"
    }

//   parameters {
//     string(name: 'gitBranch', defaultValue: 'master', description: 'This is the first param')
//   }

  stages {
        stage('Build Package') {
          steps {
            sh '''
                npm --version
                npm install
                npm run build
            '''
          }
        }
  }
}
