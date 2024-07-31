# syntax=docker/dockerfile:1
FROM ubuntu:22.04

# For python3-tk installation
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Berlin

# initial update and upgrade
RUN apt-get update && apt-get upgrade -y

#--------------------------------------------------
# build tools & base dependencies
#--------------------------------------------------
    RUN apt-get update && apt-get install --install-recommends -y \
    python3 \
    nano \
    vim \
    git \
    less \
    dpkg \
    cmake \
    g++ \
    gcc \
    gfortran \
    make \
    python3-pip \
    mesa-utils \
    python3-tk \
    # avoids figurecanvasagg is non-interactive and thus cannot be shown devcontainer 
    texlive-xetex
    
#--------------------------------------------------
# python build tools & base dependencies
#--------------------------------------------------
RUN pip3 install \
    simwave \
    numpy \
    torch \
    torchvision \
    validators \
    scikit-image \
    scikit-learn \
    tensorflow


