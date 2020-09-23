pipeline {
	agent any
	environment 
    {
    IMAGE_NAME = "inpdeepfake"
    PROJECT = 'ccequena'
	IMAGE = "$PROJECT:$IMAGE_NAME"
    ECRURL = 'https://708988062417.dkr.ecr.ap-southeast-2.amazonaws.com/ccequena'
	CRURL = '708988062417.dkr.ecr.ap-southeast-2.amazonaws.com/ccequena'
    ECRCRED = 'ecr:ap-southeast-2:ccequena'
			
	}
    options {
        buildDiscarder(logRotator(numToKeepStr: '3', artifactNumToKeepStr: '3'))
    }
	stages {
	    stage('Submit Stack') {
            steps {
              script {
                sh "                                                                        \
                    aws cloudformation package --template-file Cloudformation/deploy.yaml                   \
                                               --s3-bucket checkpoint-testbucket             \
                                               --output-template-file packages-template.yaml\
                                               --region ap-southeast-2                           \
                    "
                sh "aws cloudformation deploy --template-file /var/jenkins_home/jobs/${JOB_NAME}/workspace/packages-template.yaml --stack-name ${JOB_NAME} --region ap-southeast-2 --capabilities CAPABILITY_IAM CAPABILITY_AUTO_EXPAND CAPABILITY_NAMED_IAM --no-fail-on-empty-changeset"
            }
          }
        }
		
		stage('Docker build') {
            steps {
                script {
                    // Build the docker image using a Dockerfile
                    docker.build("$IMAGE")
                }
            }
        }
		stage('Docker push') {
            steps {
                script {
                    // Push the Docker image to ECR
                    docker.withRegistry(ECRURL, ECRCRED)
                    {
                        docker.image("$IMAGE").push()
                    }
                }
            }
        }
  }
		post {
        	always {
            // make sure that the Docker image is removed
            sh "docker rmi $IMAGE | true"
			sh "docker rmi $CRURL:$IMAGE_NAME | true"
        	}
    	}
		
	
}