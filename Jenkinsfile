node('master'){
    try {
        notifyBuild('STARTED')

        def app
            stage('Clone repository') {
                checkout scm               
            }

            stage('Build image') {
                app = docker.build("onebyte")
            }
      
            }
            stage ('Does sshpass work?'){
              
             
                 sh "docker run --name onebyte"
            }

        }
    catch (e) {
    // If there was an exception thrown, the build failed
    currentBuild.result = "FAILED"
    throw e
  } finally {
    // Success or failure, always send notifications
    notifyBuild(currentBuild.result)
  }
}
