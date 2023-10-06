# Use jupyter/datascience-notebook
FROM jupyter/datascience-notebook:latest

# Make the directory for the project files
RUN mkdir /home/jovyan/work/build-ml-pipeline-for-short-term-rental-prices

# Set the working directory to /home/jovyan/work
WORKDIR /home/jovyan/work

# Copy the current directory contents into the container
COPY . /home/jovyan/work/build-ml-pipeline-for-short-term-rental-prices


