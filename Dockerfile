# Use image
FROM 763104351884.dkr.ecr.ap-southeast-2.amazonaws.com/pytorch-inference:1.6.0-gpu-py36-cu101-ubuntu16.04

#worker directory
WORKDIR /home/ubuntu/deepfake

# Copy files for (start.sh)
COPY . .

# Install dependencies

RUN apt-get update && \
apt-get install -y apt-transport-https 

# Start the app
RUN source activate pytorch_latest_p36
RUN cd inp-deep-fake-detection/
RUN conda install -c conda-forge appmode

# Run shell
RUN ./start.sh

EXPOSE 8890
