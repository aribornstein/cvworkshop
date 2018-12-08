FROM tensorflow/tensorflow:latest-py3

RUN apt-get update && apt-get install python-opencv git python3-setuptools -y && \ 
    apt-get clean -y

RUN pip install Pillow h5py keras tqdm jupyter azure-cli azureml-sdk[notebooks] \
                opencv-python azure-cognitiveservices-vision-customvision --user && \
    git clone https://github.com/fizyr/keras-retinanet.git && cd keras-retinanet && pip install . 
    

# RUN echo 'alias az="python3 -m azure.cli"' >> ~/.bashrc
