# Python <!-- omit in toc -->

- [Python.org](#pythonorg)
- [Install Python on Linux / WSL](#install-python-on-linux--wsl)
- [Learning Resources](#learning-resources)
- [Setting up development environment](#setting-up-development-environment)
  - [VS Code](#vs-code)
    - [Plugins](#plugins)
    - [Set-up a Flask project](#set-up-a-flask-project)
  - [PyCharm Community set-up](#pycharm-community-set-up)
    - [Set-up a Flask project](#set-up-a-flask-project-1)
    - [Run the application](#run-the-application)
    - [Updating PyCharm on Linux](#updating-pycharm-on-linux)

---

## Python.org
- https://www.python.org/
- [Getting Started](https://www.python.org/about/gettingstarted/)
- [Code Samples](https://wiki.python.org/moin/BeginnersGuide/Examples)

## Install Python on Linux / WSL

```
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install python3 python3-pip python3-venv
python3 --version
```

## Learning Resources

**Miguel Grinberg**
- [Book and videos on Safari](https://proquestcombo-safaribooksonline-com.res.banq.qc.ca/search?q=Miguel%20Grinberg)
- [Blog](https://blog.miguelgrinberg.com/)
- [Github](https://github.com/miguelgrinberg)
- [Youtube](https://www.youtube.com/channel/UCZJiXG_auf0o7LByqC1LHuQ)

**Videos**   
Hands-On Microservices with Python, By: Peter Fisher   
Publisher: Packt Publishing   
https://proquestcombo-safaribooksonline-com.res.banq.qc.ca/video/programming/python/9781789132045

Essential Docker for Python Flask Development, By: Jorge Escobar  
https://proquestcombo-safaribooksonline-com.res.banq.qc.ca/video/programming/python/200000006a0401

**Virtual environments:**    
https://uoa-eresearch.github.io/eresearch-cookbook/recipe/2014/11/26/python-virtual-env/
https://realpython.com/python-virtual-environments-a-primer/

**Microservices:**   
https://medium.com/@ssola/building-microservices-with-python-part-i-5240a8dcc2fb

## Setting up development environment

### VS Code

#### Plugins
  - Python (Microsoft)
  - Remote Development Extension Pack
  - Markdown All in One


#### Set-up a Flask project

[Setting Up a Flask Application in Visual Studio Code - Miguel Grinberg](https://youtu.be/UXqiVe6h3lA) 

- Clone a project, flasky for example
- Create a virtual environment
- Activate the virtual environment
- Import requirements for the application
- Set the FLASK_APP environment variable

```
    cd jfrflabs/github/
    git clone https://github.com/miguelgrinberg/flasky.git
    mv flasky/ flasky-vscode/
    cd flasky-vscode/
    python3 -m venv venv
    source venv/bin/activate
    sudo pip install -r requirements/dev.txt 
    export FLASK_APP=flasky.py

```

### PyCharm Community set-up

[Setting Up a Flask Application in PyCharm - Miguel Grinberg](https://youtu.be/bZUokrYanFM)  

#### Set-up a Flask project

- Clone a project, flasky for example
- Create a virtual environment
- Activate the virtual environment
- Import requirements for the application
- Set the FLASK_APP environment variable
- Deploy the app using the custom CLI (flask deploy)

```
    cd jfrflabs/github/
    git clone https://github.com/miguelgrinberg/flasky.git
    mv flasky/ flasky-pycharm/
    cd flasky-pycharm/
    python3 -m venv venv
    . venv/bin/activate
    sudo pip install -r requirements/dev.txt 
    export FLASK_APP=flasky.py
    flask deploy
```

#### Run the application

- TODO: Video 5:18

#### Updating PyCharm on Linux

- updating PyCharm on linux (need elevated privileges). Execute the following procedure then open Pycharm and go to Help\check for updates
- [Stackoverflow: Update PyCharm on Linux](https://stackoverflow.com/questions/23255033/update-pycharm-on-linux)


```
    locate pycharm.sh
    sudo chown -R <User>:root <pycharm directory>

    # Update PyCharm from the application menu Help\Check for updates

    sudo chown -R root:root <pycharm directory>
```