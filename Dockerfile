# Use Ubuntu 20.04 as the base image
FROM ubuntu:20.04

# Set environment variables to non-interactive mode
ENV DEBIAN_FRONTEND=noninteractive

# Update the package repository and install required packages
RUN apt-get update -y && apt-get install -y \
    python3 \
    python3-pip \
    jupyter \
    && apt-get clean

# Create a working directory
