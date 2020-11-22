# Model Deployment

Basic deployment of Machine Learning and Deep Learning models to Heroku PaaS.

## Models

1. ML Prediction - Prediction of house price using linear regression on Boston housing dataset
2. DL Prediction - Image classifier using ResNet50 model with ImageNet pre-trained weights
3. DL Object Detection - Detection of objects using bounding boxes / semantic segmentation using Detectron model

## Deployment

Deployed to Heroku using either of the following methods:
- using Docker, pushing the image to Heroku container registry and deploying it ([Dockerfile](./Dockerfile))
- using Heroku Python buildpack, by deploying it through Git ([Procfile](./Procfile))