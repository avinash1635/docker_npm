pipeline
{
    agent{
        label 'Jenkins_Slaves'
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
            npm install
            {
                sh label: ", script: 'npm install'
            }
            npm build
            {
                sh label: ", script: 'npm build'
            }
        }
    }
}