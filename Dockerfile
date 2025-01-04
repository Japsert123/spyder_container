FROM condaforge/miniforge3

# Creating new environment according to environment.yml
WORKDIR /app
COPY env.yml /app/env.yml
RUN conda env create -f env.yml

RUN /opt/conda/bin/conda init bash


# Copy scripts and package lists
COPY ./packages ./packages
RUN chmod +x packages/packages.sh

# Install packages
ARG DEBIAN_FRONTEND=noninteractive
RUN ./packages/packages.sh