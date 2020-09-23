# Use image
FROM cjcequena0617/pytorch-ubuntu

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
