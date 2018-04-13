node {
  
    def nodeHome = tool name: 'nodejs', type: 'jenkins.plugins.nodejs.tools.NodeJSInstallation'
  
    env.PATH = "${nodeHome}/bin:${env.PATH}"
    stage('check tools') {
         sh "node -v"
         sh "npm -v"
    }

    stage('checkout') {
        deleteDir()
        checkout scm
    }

    stage('angular cli & npm install') {
        // sh "npm install"
        withEnv(["NPM_CONFIG_LOGLEVEL=warn"]) {
            sh 'npm install --save intl'
            sh 'npm install'
        }
    }

   stage('protractor tests') {
        sh "npm run e2e"
    }
}
