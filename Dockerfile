FROM condaforge/miniforge3
LABEL org.opencontainers.image.description="A distrobox container image for the Spyder IDE!"

# Creating new environment according to environment.yml
WORKDIR /app
COPY ./packages ./packages
COPY packages.sh packages.sh
RUN conda env create -f packages/env.yml

RUN /opt/conda/bin/conda init bash


# Install packages
RUN chmod +x packages.sh
ARG DEBIAN_FRONTEND=noninteractive 
RUN ./packages.sh
 