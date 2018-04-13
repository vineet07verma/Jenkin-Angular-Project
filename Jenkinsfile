node {
  
    /* def nodeHome = tool name: 'nodejs', type: 'jenkins.plugins.nodejs.tools.NodeJSInstallation'
  
    env.PATH = "${nodeHome}/bin:${env.PATH}"
    stage('Checking Node and NPM versions') {
         sh "node -v"
         sh "npm -v"
    }
  
    stage('Git Code Checkout and Cloning') {
        deleteDir()
        checkout scm
    }

    stage('Npm install') {
        withEnv(["NPM_CONFIG_LOGLEVEL=warn"]) {
            sh 'npm install --save intl'
            sh 'npm install'
        }
    }

    stage('Karma tests runner') {
        sh 'ng test --browser PhantomJS --watch false'
    }
  
    stage('E2E protractor tests') {
        sh "npm run e2e"
    }
  
    stage('Angular Build Project') {
        milestone()
        sh "npm run build --prod --env=dev"
    }
  
    stage('Archive') {
        sh 'tar -cvzf dist.tar.gz --strip-components=1 dist'
        archive 'dist.tar.gz'
    } */

    stage('Deploy') {
        milestone()
        echo "Deleting old existing files"
        sh 'sudo -S rm /usr/share/nginx/html/*'
        echo "Deploying..."
        sh 'cp -rf /var/lib/jenkins/workspace/AngularJenkinsProject/dist/* /usr/share/nginx/html/'
    }
}
