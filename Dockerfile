FROM continuumio/miniconda3

# Creating new environment according to environment.yml
WORKDIR /app
COPY env.yml /app/env.yml
RUN conda env create -f env.yml

RUN echo "source activate spyder" > ~/.bashrc
ENV PATH /opt/conda/envs/spyder/bin:$PATH