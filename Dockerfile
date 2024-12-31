FROM condaforge/miniforge3

# Creating new environment according to environment.yml
WORKDIR /app
COPY env.yml /app/env.yml
RUN conda env create -f env.yml

RUN echo "conda activate spyder" > ~/.bashrc
ENV PATH /opt/conda/envs/spyder/bin:$PATH

# Enable LaTeX rendering in matplotlib
RUN apt-get -y update && apt-get -y upgrade && apt-get -y install texlive-base
