pipeline {
  agent { docker 'node:6.3' }

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
        // stage('Terraform plan') {
        //   steps {
        //     // sh 'terraform plan -out'
        //   }
        // }
  }
}