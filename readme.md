## Docker Container for Fabric Task runner

This is a docker container for Python library [Fabric](http://fabfile.org). It can be used with
to deploy projects with Fabric fabfile.

<!-- This image is build on top of the
[Alpine Linux](http://www.alpinelinux.org/) as base image. -->

Python 2.7.18

The image has following installed versions
<!-- 
| Name     | Versions |
| -------- | -------- |
| Python   | 3.9.7    |
| Fabric   | 2.6.0    |
| Paramiko | 2.7.2    |
| Invoke   | 1.5.0    |
| Paramiko Cell  | Content Cell  | -->

| Package            | Version    |
|------------------- | -----------|
|appdirs            | 1.4.3      |
|bcrypt             | 3.1.7      
|cffi               | 1.15.0     
|configparser       | 4.0.2      
|contextlib2        | 0.6.0.post1
|cryptography       | 3.3.2      
|distlib            | 0.3.0      
|enum34             | 1.1.10     
|Fabric             | 1.14.1     
|filelock           | 3.0.12     
|importlib-metadata | 1.6.0      
|importlib-resources| 1.4.0      
|ipaddress          | 1.0.23     
|paramiko           | 2.8.0      
|pathlib2           | 2.3.5      
|pip                | 20.0.2     
|pycparser          | 2.21       
|PyNaCl             | 1.4.0      
|scandir            | 1.10.0     
|setuptools         | 44.1.0     
|singledispatch     | 3.4.0.3    
|six                | 1.14.0     
|typing             | 3.7.4.1    
|virtualenv         | 20.0.18    
|wheel              | 0.34.2     
|zipp               | 1.2.0      
-------------------------------------

pip version 20.0.2

## Usage

After pulling the image from registry, go into any project that has a fabfile.py.
Then run the following commands to run fabric:

```
docker run --rm -it -v "$PWD:/app" ghcr.io/clarity-tech/docker-fabric fab -l
```

The above command will list your fabric tasks. You can use the command below to know the fabric version:

```
docker run --rm -it -v "$PWD:/app" ghcr.io/clarity-tech/docker-fabric fab --version
```

## TODO
To use with gitlab ci

## As an alias

You can even create an alias like below in your `.bashrc` or `.zshrc` file depending on your shell:

```
alias fab='docker run --rm -it -v "$PWD:/app" ghcr.io/clarity-tech/docker-fabric'
```
