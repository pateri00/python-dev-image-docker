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
    pip3 \
    mesa-utils

#--------------------------------------------------
# python build tools & base dependencies
#--------------------------------------------------
RUN pip3 install \
    simwave \
    numpy 