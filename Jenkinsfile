node {
    stage('check tools') {
        sh "node -v"
        sh "npm -v"
    }

    stage('checkout') {
        checkout scm
    }

    stage('angular cli & npm install') {
        sh "sudo npm install"
    }

    stage('unit tests') {
        sh "ng test --watch false"
    }

    stage('protractor tests') {
        sh "npm run e2e"
    }
}