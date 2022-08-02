node
{

//Checkout Code stage
stage('CheckoutCode'){
git credentialsId: '4368c281-f352-4495-89c1-730c9742fca9', url: 'https://github.com/MithunTechnologiesDevOps/nodejs-app-mss.git'
}

//Build
stage('Build'){
nodejs(nodeJSInstallationName: 'nodejs18.6.0'){
sh "npm install"
}
}

//Execute SOnarQUbe Report
stage('ExecuteSonarQubeReport'){
nodejs(nodeJSInstallationName: 'nodejs18.6.0'){
sh "npm run sonar"
}
}

stage('UploadArtifcatsintoNexus')
{
sh "npm publish"
}

stage('RunNodeJsApp')
{
sh "npm run app.js &"
}



}
