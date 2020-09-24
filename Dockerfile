# Use image
FROM cjcequena0617/pytorch-ubuntu

#worker directory
WORKDIR /home/ubuntu/deepfake

# Copy files for (start.sh)
COPY . .

# Install dependencies
CMD source activate pytorch_latest_p36
RUN conda install -c conda-forge appmode
RUN conda install jupyter
# Start the app

# Run shell
RUN chmod +x ./start.sh
CMD ./start.sh

CMD ["jupyter", "notebook", "--port=4000", "--no-browser", "--ip=0.0.0.0", "--allow-root"]

