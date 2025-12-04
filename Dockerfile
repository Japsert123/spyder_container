FROM condaforge/miniforge3 as spyder_container
LABEL org.opencontainers.image.description="A distrobox container image for the Spyder IDE!"

# Creating new environment according to environment.yml
WORKDIR /app
COPY ./packages ./packages
COPY packages.sh packages.sh

# Install packages
RUN chmod +x packages.sh
ARG DEBIAN_FRONTEND=noninteractive 
RUN ./packages.sh
RUN cat ./packages/distrobox.packages | xargs apt-get -y install --no-install-recommends

# Prepare the conda environment
RUN conda env create -f packages/environment.yml
# RUN /opt/conda/bin/conda init bash

# Setup Simnibs conda env
RUN conda env create -f packages/neuroscience.yml
