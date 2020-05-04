pipeline
{
    agent{
        label 'docker_slave'
    } 
    stages
    {
        stage ('continuous download')
        {
            steps
            {
                git 'https://github.com/avinash1635/a.docker.git'
            }
        }
        stage ('continuous build')
        {
            steps
            {
               sh "docker build -t npmfile ."                           
            }
        }
    }
}