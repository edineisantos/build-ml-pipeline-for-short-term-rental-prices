# Use the official Python 3.8 image
FROM python:3.8

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container
COPY . .

# Install git using apt
RUN apt-get update && apt-get install -y git

# Install Miniconda
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
    bash Miniconda3-latest-Linux-x86_64.sh -b -p /miniconda && \
    rm Miniconda3-latest-Linux-x86_64.sh

# Update PATH so that pip and conda are available
ENV PATH="/miniconda/bin:${PATH}"

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Expose the ports Jupyter and other services will run on
EXPOSE 8888
EXPOSE 8889
EXPOSE 8890



