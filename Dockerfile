FROM python:3.7
LABEL maintainer="manisha.saini44@gmail.com"
ENV PORT 3000
# Create app directory
RUN pip install --upgrade pip
RUN pip install scikit-learn tensorflow Flask
WORKDIR /usr/src/app
# Install app dependencies
RUN pip install -U torch torchvision 
RUN pip install cython pyyaml==5.1
RUN pip install -U 'git+https://github.com/cocodataset/cocoapi.git#subdirectory=PythonAPI'
RUN pip install -U Pillow
RUN pip install detectron2 -f https://dl.fbaipublicfiles.com/detectron2/wheels/cpu/torch1.7/index.html
RUN pip install gunicorn
RUN pip install pandas
# Bundle app source
COPY . .
# Run the application
CMD gunicorn -b :$PORT --timeout 300 main:app
