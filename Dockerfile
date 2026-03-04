FROM pytorch/pytorch:2.7.0-cuda12.6-cudnn9-runtime

# install git
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# install numpy (if not already there)
RUN pip install numpy

# move everything inside the container
COPY . /workspace
WORKDIR /workspace
