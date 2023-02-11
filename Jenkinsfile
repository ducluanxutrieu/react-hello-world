pipeline {
    agent {
        docker {
            image 'node:16.19.0'
        }
    }
// agent any
// tools {nodejs "nodejs"}

//   parameters {
//     string(name: 'gitBranch', defaultValue: 'master', description: 'This is the first param')
//   }

  stages {
        stage('Build Package') {
          steps {
            withNPM(npmrcConfig: '68f2a11e-9645-4c5f-a754-36648b8a3e1c') {
                sh '''
                    npm version
                    npm install
                    npm run build
                '''
            }
          }
        }
        stage('Testing') {
          steps {
            withNPM(npmrcConfig: '68f2a11e-9645-4c5f-a754-36648b8a3e1c') {
                sh '''
                    npm run test
                '''
            }
          }
        }
        stage('Deploy to S3') {
            steps {
                withAWS([credentials: "	private"]) {
                    s3Upload(file: 'build', bucket: 'luantd.tech', path: 'react-app/')
                }
            }
        }
  }
}