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
       // withEnv(["NPM_CONFIG_LOGLEVEL=warn"]) {
            // sh 'npm install'
        // }
    }

   stage('Karma tests runner') {
        // withEnv(["CHROME_BIN=/usr/bin/chromium-browser"]) {
          // sh 'npm run test --progress=false --watch false'
        // }
        // junit '**/test-results.xml'
    }
  
    stage('protractor tests') {
        //sh "npm run e2e"
    }
  
   stage('Angular Build') {
        milestone()
        sh "npm run build --prod --env=dev"
    }
  
  stage('Archive') {
        sh 'tar -cvzf dist.tar.gz --strip-components=1 dist'
        archive 'dist.tar.gz'
    }

    stage('Deploy') {
        milestone()
        echo "Deploying..."
    }
}
