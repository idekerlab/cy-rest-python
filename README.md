# cyREST Examples for Python Users 

![](http://cl.ly/XohP/logo300.png)


## Introduction
This is a guide for Python users who want to use [Cytoscape](http://www.cytoscape.org/index.html) via [cyREST](http://apps.cytoscape.org/apps/cyrest) workflows in IPython Notebooks. 

### [cyREST Documentation](https://github.com/idekerlab/cyREST/wiki)

## Requirments
I assume you are a Python programmer.  You should know how to use _pip_, _IPython Notebook_, etc.  Also, these examples a lot of 3rd party libraries to demonstrate realistic data analysis and visualization workflows.  This means you have to install all of your dependencies manually.


## How to Use Example Notebooks

1. Make sure your machine already has Python and related libraries, such as ipython, numpy, scipy, pandas, etc.
1. Start Cytoscape (cyREST should be installed!)
1. Clone the repository: ```git clone https://github.com/idekerlab/cy-rest-python```
1. Change directory: ```cd cy-rest-python```
1. Start IPython Notebook: ```ipython notebook```
1. Select _**index.ipynb**_ to start the example

### Using Docker Instead
If you don't want to install everything by yourself, you can use our Docker container instead.

#### Building Container in this directory
```
docker build -t idekerlab/cyrest-demo:1.0 .
```

#### Running Container
```
docker run -d -p 80:8888 -v $PWD:/notebooks -e "PASSWORD=cyrest" -e "USE_HTTP=1" idekerlab/cyrest-demo:1.0
```

and open the notebook with your web browser.  Make sure youy are using correct IP address!

## View Examples in GitHub
If you just want to see sample notebooks, you can access them from [this index page](https://github.com/idekerlab/cy-rest-python/blob/develop/index.ipynb).

