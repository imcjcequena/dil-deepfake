source activate pytorch_latest_p36
cd deepfake
git clone https://github.dxc.com/Digital-Innovation-Lab/inp-deep-fake-detection.git
cd inp-deep-fake-detection
conda install pip
pip install -r requirements.txt
cd anaconda3/envs/pytorch_latest_p36/lib/python3.6/site-packages/torch/
jupyter notebook
