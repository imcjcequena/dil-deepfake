# inp-deep-fake-detection

Solution helps to identify documents that have been modified.Documents such as an Income Statement or pictures are run through a ML algorithm that can provide a risk score on the authenticity of each document. 

It employs a deep neural network that looks at the relationship of each pixel on the document and calculates if any modifications were made.

Eg. If a person gets into a car accident and exaggerates his car’s damage by editing the picture of his car to claim more insurance than needed, the model would be able to pick it up to declare its false authenticity.

This solution can be applied in the insurance industry or public sector to increase the efficiency and accuracy of processing workloads in high volumes.

Setup

St : 1 Create Pytorch 1.4 or 1.6 enabled EC2 instance(Deep Learning AMI (Ubuntu 18.04) Version 34.0)

St : 2 Activate virtual environment : source activate pytorch_latest_p36

St : 3 Clone github repository : https://github.dxc.com/Digital-Innovation-Lab/inp-deep-fake-detection.git

St : 4 Activate virtual environment : source activate pytorch_latest_p36

St : 5 Change directory to  inp-deep-fake-detection  

St : 6 Install appmode : conda install -c conda-forge appmode

St : 7 Change directory to /home/ubuntu/anaconda3/envs/pytorch_latest_p36/lib/python3.6/site-packages/torch

St : 8 open a file  "serialization.py" : Change the parameters of the function named load() in the serialization.py file 

      Change line : def load(f, map_location='cpu', pickle_module=pickle, **pickle_load_args):
      Insted of line : def load(f, map_location=None, pickle_module=pickle, **pickle_load_args):

St : 9 Generate Jupyter notebook configuration
      
      jupyter notebook --generate-config
      cd ~/.jupyter/
      vi jupyter_notebook_config.py
      c = get_config()
      
      #Add configuration
      
      c.IPKernelApp.pylab = 'inline' 
      c.NotebookApp.ip = '*'
      c.NotebookApp.open_browser = False 
      c.NotebookApp.port = 8888


St : 10 Enter command jupyter notebook password to set password for your notebook instead of token

St : 11 Change directory to  inp-deep-fake-detection : type command jupyter notebook

St : 12 Pass public IP or DNS of your cloud instance with port 8888.

St : 13 Open ec2-XX-XXX-XX-XX.XX-XXXX-X.compute.amazonaws.com:8888 in your browser and enter the token / password for the jupyter notebook from the terminal

St : 14 Open ipynb file in the jupyter notebook : Fake image detection.ipynb, select kernal "Environment (conda_pytorch_latest_p36)" and run all cells or click appmode to run the notebook as website
