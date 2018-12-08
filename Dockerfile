FROM tensorflow/tensorflow:latest-py3

RUN apt-get update && apt-get install python-opencv unzip git python3-setuptools -y && \ 
    apt-get clean -y && \
    pip install Pillow h5py keras tqdm jupyter azure-cli azureml-sdk[notebooks] \
                opencv-python azure-cognitiveservices-vision-customvision --user && \
    git clone https://github.com/fizyr/keras-retinanet.git && \
    cd keras-retinanet && pip install . && \
    git clone https://github.com/aribornstein/cvworkshop.git && \
    mv cvworkshop/* /notebooks && cd /notebooks && \
    curl -LJO \
         https://github.com/aribornstein/cvworkshop/releases/download/v1.0.0/cvworkshop.zip && \ 
     unzip cvworkshop && \
    rm 1_hello_tensorflow.ipynb  2_getting_started.ipynb  3_mnist_from_scratch.ipynb \
       cvworkshop.zip BUILD  LICENSE

CMD jupyter notebook --allow-root --ip=0.0.0.0
