# Use jupyter/base-notebook
FROM jupyter/base-notebook:python-3.8.13

# Make the directory for the project files
RUN mkdir /home/jovyan/work/build-ml-pipeline-for-short-term-rental-prices

# Set the working directory to /home/jovyan/work
WORKDIR /home/jovyan/work/build-ml-pipeline-for-short-term-rental-prices

# Copy the current directory contents into the container
COPY . /home/jovyan/work/build-ml-pipeline-for-short-term-rental-prices


