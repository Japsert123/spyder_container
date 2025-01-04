FROM condaforge/miniforge3

# Creating new environment according to environment.yml
WORKDIR /app
COPY ./packages ./packages
RUN conda env create -f packages/env.yml

RUN /opt/conda/bin/conda init bash


# Copy scripts and package lists
RUN chmod +x packages/packages.sh

# Install packages
ARG DEBIAN_FRONTEND=noninteractive
RUN ./packages/packages.sh