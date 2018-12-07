# Computer Vision Workshop
In this workshop we'll be exploring the topic of Computer Vision, through deep diving into a recent real world customer scenario. We’ll compare different approaches and demonstrate how the open source [VoTT](github.com/Microsoft/VoTT) (Visual Object Tagging Tool) can be used to easily annotate image and quickly iterate object detection models for complex image classification scenarios. 
 
This computer vision workshop is based on the work detecting complex policies in the following [real life code story](https://www.microsoft.com/developerblog/2017/07/31/using-object-detection-complex-image-classification-scenarios/)

# Setup Instructions
### Step 1 
Download and Install the [docker](https://www.docker.com) or if you have a gpu and unix based os the nvidia-docker client.

### Step 2 
Clone or download the Computer Vision Workshop repo

### Step 3 

**OPTION A From TAR File**
Load from the tar file with the following command 
```
docker load < cv_workshop.tar
```

**OPTION B NO TAR File**
If you don't have tar file. Build the workshop docker image using the following command for either cpu or gpu.

CPU
```
docker build -f Dockerfile-py3-cpu . -t cv
```

GPU
```
nvidia-docker build -f Dockerfile-py3-gpu . -t cv
```
### Step 4
Run the image you built using the following command for either cpu or gpu to start the notebook server. If you are on windows make sure you are running linux containers.

**CPU**
```
sudo docker run -it -v /var/run/docker.sock:/var/run/docker.sock -p 8888:8888 --expose=8888 cv
```

**GPU**
```
sudo nvidia-docker run -it  -v /var/run/docker.sock:/var/run/docker.sock -p 8888:8888 --expose=8888 cv
```

### Step 5 
Copy and store the notebook token key that is displayed after the notebook server is running

### Step 6
Navigate to http://localhost:8888/tree and enter the token you copied.

### Step 7 
Click on the "Computer Vision Workshop Intro" notebook and confirm that everthing loads as expected
