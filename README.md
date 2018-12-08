# Computer Vision Workshop
In this workshop we'll be exploring the topic of Computer Vision, through deep diving into a recent real world customer scenario. We’ll compare different approaches and demonstrate how the open source [VoTT](github.com/Microsoft/VoTT) (Visual Object Tagging Tool) can be used to easily annotate image and quickly iterate object detection models for complex image classification scenarios. 
 
This computer vision workshop is based on the work detecting complex policies in the following [real life code story](https://www.microsoft.com/developerblog/2017/07/31/using-object-detection-complex-image-classification-scenarios/)

# Setup Instructions

## Option 1 Run On Azure DSVM 

## Option 2 Run Locally 

### Step 1 
Download and Install the [docker](https://www.docker.com) or if you have a gpu and unix based os the nvidia-docker client.

### Step 2
Run the following command in the terminal or command prompt
```
docker run --rm -it -p 8888:8888 abornst/cvworkshop
```
### Step 3 
Copy and store the notebook token key that is displayed after the notebook server is running

### Step 4
Navigate to http://localhost:8888/tree and enter the token you copied.

### Step 4
Click on the "Computer Vision Workshop Intro" notebook and confirm that everthing loads as expected

