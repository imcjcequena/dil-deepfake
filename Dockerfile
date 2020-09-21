# Use image
FROM amd64/python:3

#worker directory
WORKDIR /home/ubuntu/deepfake

# Copy files for (start.sh)
COPY . .

# Install dependencies
RUN apt-get update && \
apt-get -y install torchvision && \
apt-get -y install cudatoolkit=10.1 && \
apt-get -y install pytorch && \
apt-get -y install jupyterlab && \
apt-get -y install tqdm && \
apt-get -y install matplotlib && \
apt-get -y install scipy && \
apt-get -y install appmode && \
apt-get -y install ipywidgets && \
apt-get -y install tensorflow=1.13

# Run shell
RUN ./start.sh