# Use image
FROM amd64/python:3

#worker directory
WORKDIR /home/ubuntu/deepfake

# Copy files for (start.sh)
COPY . .

# Install dependencies

RUN apt-get update && \
apt-get install -y apt-transport-https && \
sudo apt install python3-pip &&\
pip install torchvision && \
pip install torch==1.6.0+cu101 torchvision==0.7.0+cu101 -f https://download.pytorch.org/whl/torch_stable.html && \
pip install jupyterlab && \
pip install tqdm && \
pip install matplotlib && \
pip install scipy && \
pip install appmode && \
pip install ipywidgets && \
pip install tensorflow=1.13

# Run shell
RUN ./start.sh
