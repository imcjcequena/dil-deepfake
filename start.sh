pip3 install virtualenv
python3 -m virtualenv venv
. venv/bin/activate
#source activate pytorch_latest_p36
mkdir deepfake
cd deepfake
git clone https://github.dxc.com/Digital-Innovation-Lab/inp-deep-fake-detection.git
cd inp-deep-fake-detection
pip3 install -r requirements.txt
jupyter notebook
