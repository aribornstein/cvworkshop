# Computer Vision Workshop: Using Object Detection for Complex Image Classification Scenarios
![](https://github.com/ashleymcnamara/Developer-Advocate-Bit/blob/master/bit_ai.png?raw=true)

Photocredits to the talented [Ashley Mcnamara](https://github.com/ashleymcnamara/Developer-Advocate-Bit/blob/master/bit_ai.png)

In this workshop we'll be exploring the topic of Computer Vision, through deep diving into a recent real world customer scenario. We’ll compare different approaches and demonstrate how the open source [VoTT](github.com/Microsoft/VoTT) (Visual Object Tagging Tool) can be used to easily annotate image and quickly iterate object detection models for complex image classification scenarios. 

# Getting Started
 
This computer vision workshop is based on the work detecting complex policies in the following [real life code story](https://www.microsoft.com/developerblog/2017/07/31/using-object-detection-complex-image-classification-scenarios/?WT.mc_id=aiml-0000-abornst)

There are six parts to the workshop:
 - 1) [Introduction](https://github.com/aribornstein/cvworkshop/blob/master/%231%20Computer%20Vision%20Workshop%20Intro.ipynb)
 - 2) [Policy Classfication With Custom Vision Service](https://github.com/aribornstein/cvworkshop/blob/master/%232%20Policy%20Classfication%20With%20Custom%20Vision%20Service.ipynb)
 - 3) [Policy Recognition with CNNs, MobileNet and Transfer Learning](https://github.com/aribornstein/cvworkshop/blob/master/%233%20Policy%20Recognition%20with%20CNNs%2C%20MobileNet%20and%20Transfer%20Learning.ipynb)
 - 4) [Policy Detection with Keras RetinaNet](https://github.com/aribornstein/cvworkshop/blob/master/%234%20Policy%20Detection%20with%20Keras%20RetinaNet.ipynb)
 - 5) [Training and Computer Vision Models on the Cloud using Azure ML Service](https://github.com/aribornstein/cvworkshop/blob/master/%235%20Training%20and%20Computer%20Vision%20Models%20on%20the%20Cloud%20using%20Azure%20ML%20Service.ipynb)
 - 6) [Train a Computer Vision Model on a Remote Cluster with Azure Machine Learning](https://github.com/aribornstein/cvworkshop/blob/master/%235%20Training%20and%20Computer%20Vision%20Models%20on%20the%20Cloud%20using%20Azure%20ML%20Service.ipynb)

Everything in the workshop is self-contained in docker and will run on a cpu machine.

# Setup Instructions

## Option 1 Run Locally 

### Step 1 
Download and Install the [docker](https://www.docker.com) client.

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
Click on the "Computer Vision Workshop Intro" notebook and confirm that everthing loads as expected.

## Option 2 Run On the cloud with the [Azure DSVM](https://medium.com/@aribornstein/5-steps-to-more-interactive-deep-learning-79126f089696) 

The [Data Science Virtual Machine (DSVM)](https://docs.microsoft.com/azure/machine-learning/data-science-virtual-machine/overview?WT.mc_id=aiml-0000-abornst) is a customized VM image on Microsoft’s Azure cloud built specifically for doing data science. It has many popular data science and other tools pre-installed and pre-configured to jump-start building intelligent applications for advanced analytics. While this workshop will run on any cloud it is optimized and tested on the Azure DSVM.

### Prerequisite’s

Azure Subscription you can sign up for a trial [here](https://azure.microsoft.com/offers/ms-azr-0044p/?WT.mc_id=aiml-0000-abornst)

### Step 1

Create Linux a DSVM for deployment steps [click here](https://docs.microsoft.com/azure/machine-learning/data-science-virtual-machine/dsvm-ubuntu-intro?WT.mc_id=aiml-0000-abornst)
![](https://cdn-images-1.medium.com/max/1200/0*jqpjzD7wCqzGk2dR.gif)

### Step 2 

Open the Port 8888 on the DSVM 

![](https://cdn-images-1.medium.com/max/1200/0*B_wWKNZL9UFiZh9K.gif)

For detailed steps on opening a port [click here](https://docs.microsoft.com/azure/virtual-machines/windows/nsg-quickstart-portal?WT.mc_id=aiml-0000-abornst)

### Step 3

Connect to the DSVM with the Azure Shell
![](https://cdn-images-1.medium.com/max/1200/0*dfoVcemzvTHIn4bD.gif)

### Step 4

Run Docker Container & link 8888 port to the VM Host using the following command

```
docker run --rm -it -p 8888:8888 abornst/cvworkshop
```

![](https://cdn-images-1.medium.com/max/1200/0*yJWVZw5dy8h6gj64.gif)

### Step 5

Now that your Jupyter notebook is running to access it in the browser, copy the link to the local notebook http://cd3cdb8ea05f:8888/?token=66dc6919e8762c8136006cffd90b7b16f3fa7fd1fa591637&token=66dc6919e8762c8136006cffd90b7b16f3fa7fd1fa591637
Replace the http://cd3cdb8ea05f or http://localhost part of the jupyter url with your VM's DNS name

![](https://cdn-images-1.medium.com/max/1200/0*6G_Ex_dQt4NU63sE.gif)

## About the Author
[Aaron (Ari) Bornstein](https://medium.com/@aribornstein/what-does-it-mean-to-be-the-first-microsoft-cloud-developer-advocate-in-israel-2156f1d61229) is an avid AI enthusiast with a passion for history, engaging with new technologies and computational medicine. As an Open Source Engineer at Microsoft’s Cloud Developer Advocacy team, he collaborates with Israeli Hi-Tech Community, to solve real world problems with game changing technologies that are then documented, open sourced, and shared with the rest of the world.

