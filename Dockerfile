# Use image
FROM deeplearningzerotoall/pytorch:latest

#worker directory
WORKDIR /home/ubuntu/deepfake

# Copy files for (start.sh)
COPY . .

# Install dependencies

RUN apt-get update && \
apt-get install -y apt-transport-https 


# Run shell
RUN ./start.sh
