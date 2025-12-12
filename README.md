# A container for the Spyder IDE! [![Images](https://github.com/Japsert123/spyder_container/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/Japsert123/spyder_container/actions/workflows/docker-publish.yml)
This container includes the Spyder IDE installed in a conda container together with some often used conda/python packages. 

The container is intended for use in distrobox/toolbox, but can of course be used to your own liking!❤️

Use this container by running:
```
$ distrobox-assemble create --file https://raw.githubusercontent.com/Japsert123/spyder_container/refs/heads/master/spyder_container.ini
```
on your local Linux system for the base image. Run 
```
$ distrobox-assemble create --file https://raw.githubusercontent.com/Japsert123/spyder_container/refs/heads/master/spyder_container_neuroscience.ini
```
for an image that includes [MNE](https://mne.tools/stable/index.html) and [Simnibs](https://simnibs.github.io/simnibs/build/html/index.html) (currently Simnibs doesn't work unfortunately...)