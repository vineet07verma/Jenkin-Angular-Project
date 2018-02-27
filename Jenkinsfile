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

    stage('protractor tests') {
        sh "npm run e2e"
    }
}
