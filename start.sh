source activate pytorch_latest_p36
mkdir deepfake
cd deepfake
conda install -c conda-forge appmode
git clone https://github.dxc.com/Digital-Innovation-Lab/inp-deep-fake-detection.git
cd inp-deep-fake-detection
jupyter notebook --generate-config

cd ~/.jupyter/

cat <<EOT >> jupyter_notebook_config.py
#Add configuration
c = get_config()
c.IPKernelApp.pylab = 'inline'  # if you want plotting support always in your notebook
c.NotebookApp.ip = '*'
c.NotebookApp.open_browser = False 
c.NotebookApp.port = 8888
EOT

cd ~/.jupyter/
touch jupyter_notebook_config.json
cat <<EOT >> jupyter_notebook_config.json
{
  "NotebookApp": {
    "password": "sha1:34b1bc4d1ba7:d94e35cae82a80f95cf081ab4b4b9e2e6f6b7b22"
  }
}
EOT

jupyter notebook
