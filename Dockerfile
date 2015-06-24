#
# Simple Python Notebook Server for running cyREST examples
# Designed to use with Python 3.
#
FROM ipython/scipyserver

MAINTAINER Keiichiro Ono <kono@ucsd.edu>

##### graph-tool #########################
RUN mkdir /graph-tool
WORKDIR /graph-tool
ADD . /graph-tool

RUN echo "deb http://downloads.skewed.de/apt/trusty trusty universe" >>/etc/apt/sources.list
RUN echo "deb-src http://downloads.skewed.de/apt/trusty trusty universe" >>/etc/apt/sources.list
RUN apt-key add graph-tool-pub-key.txt

# Install OS-level packages and misc. tools
RUN apt-get update && \
    apt-get install -y build-essential libxml2-dev libxslt1-dev \
            python-dev libzmq3-dev libcurl4-openssl-dev python3-graph-tool \
        	curl wget

# Install Python dependencie
RUN pip install networkx python-igraph py2cytoscape==0.4.1 requests bokeh

WORKDIR /notebooks