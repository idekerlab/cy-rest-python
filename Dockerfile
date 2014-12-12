FROM ubuntu:14.04

# Basic system updates & install Python
RUN apt-get update && apt-get install -y git python python-numpy python-scipy python-pip python-zmq python-matplotlib

# Clone notebooks to container.  TODO: Use local notebook instead?
RUN cd /; git clone git://github.com/idekerlab/cy-rest-python

# Install all Python dependeicies with pip
RUN cd /; pip install "ipython[notebook]" requests py2cytoscape networkx bokeh

EXPOSE 8888

CMD ipython notebook --notebook-dir='/cy-rest-python' --no-browser --ip='*' --port 8888