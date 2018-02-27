node {
    stage('check tools') {
        sh "node -v"
        sh "npm -v"
    }

    stage('checkout') {
        checkout scm
    }

    stage('angular cli & npm install') {
        sh "npm install"
    }

   stage('Karma tests runner') {
        //sh "npm run test"
    }
  
    stage('protractor tests') {
        //sh "npm run e2e"
    }
  
   stage('Angular Build') {
        sh "npm run build --prod --env=dev"
    }
}
