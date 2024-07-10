# syntax=docker/dockerfile:1
FROM ubuntu:22.04

# initial update and upgrade
RUN apt-get update && apt-get upgrade -y

#--------------------------------------------------
# build tools & base dependencies
#--------------------------------------------------
    RUN apt-get update && apt-get install --install-recommends -y \
    python3 \
    nano \
    vim \
    less \
    dpkg \
    cmake \
    g++ \
    gcc \
    gfortran \
    make \
    python3-pip \
    mesa-utils \
    # avoids figurecanvasagg is non-interactive and thus cannot be shown devcontainer 
    python3-tk \        
#--------------------------------------------------
# python build tools & base dependencies
#--------------------------------------------------
RUN pip3 install \
    simwave \
    numpy \
    torch \
    torchvision \
    validators \
    scikit-image