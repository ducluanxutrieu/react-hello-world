pipeline {
  agent any

//   parameters {
//     string(name: 'gitBranch', defaultValue: 'master', description: 'This is the first param')
//   }

  stages {
        stage('Build Package') {
          steps {
            withNPM() {
                sh '''
                    npm install
                    npm run build
                '''
            }
          }
        }
        stage('Terraform plan') {
          steps {
            sh 'terraform plan -out'
          }
        }
  }
}