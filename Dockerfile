FROM python:3.7
LABEL maintainer="manisha.saini44@gmail.com"
ENV PORT 3000
# Create app directory
WORKDIR /usr/src/app
# Install app dependencies
COPY requirements.txt .
RUN pip install --upgrade pip
# Detectron fails to install if numpy is not pre-installed
RUN pip install numpy
RUN pip install -r requirements.txt
# Required for OpenCV to work
RUN apt update
RUN apt install -y ffmpeg libsm6 libxext6
# Bundle app source
COPY . .
# Run the application
CMD gunicorn -b :$PORT --timeout 300 main:app
