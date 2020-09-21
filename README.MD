# inp-deep-fake-detection

Solution helps to identify documents that have been modified.Documents such as an Income Statement or pictures are run through a ML algorithm that can provide a risk score on the authenticity of each document. 

It employs a deep neural network that looks at the relationship of each pixel on the document and calculates if any modifications were made.

Eg. If a person gets into a car accident and exaggerates his car’s damage by editing the picture of his car to claim more insurance than needed, the model would be able to pick it up to declare its false authenticity.

This solution can be applied in the insurance industry or public sector to increase the efficiency and accuracy of processing workloads in high volumes.

Setup

St : 1 Create Pytorch 1.4 or 1.6 enabled EC2 instance(Deep Learning AMI (Ubuntu 18.04) Version 34.0)

St : 2 Activate virtual environment : source activate pytorch_latest_p36

St : 3 Clone github repository : https://github.dxc.com/Digital-Innovation-Lab/inp-deep-fake-detection.git

St : 4 Change directory to  inp-deep-fake-detection

St : 5 Install pip in conda environment using : conda install pip

St : 6 Install requirements using : pip install -r requirements.txt

St : 7 Change directory to /home/ubuntu/anaconda3/envs/pytorch_latest_p36/lib/python3.6/site-packages/torch

St : 8 open a file  "serialization.py" : Change the parameters of the function named load() in the serialization.py file 

      Change line : def load(f, map_location='cpu', pickle_module=pickle, **pickle_load_args):
      Insted of line : def load(f, map_location=None, pickle_module=pickle, **pickle_load_args):

St : 9 Change directory to  inp-deep-fake-detection : type command jupyter notebook

St : 10 open new terminal : Connect to cloud instance terminal with a new flag -L

      ssh -i "for-tutorial.pem" -L 8890:localhost:8888 ubuntu@ec2-XX-XXX-XX-XX.XX-XXXX-X.compute.amazonaws.com

This command will forward the output from 8888 port of cloud instance to port 8890 of your local machine.

St : 11 Open http://localhost:8890 in your browser on you local machine and enter the token for the jupyter notebook from the terminal

St : 12 Open ipynb file in the jupyter notebook : Fake image detection.ipynb, select kernal "Environment (conda_pytorch_latest_p36)" and run all cells
