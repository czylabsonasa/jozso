
online version: [https://github.com/czylabsonasa/jozso](https://github.com/czylabsonasa/jozso)

# READ.ME
**JOZSO**: a program for calculating broad neutron resonances

## Prerequisites:
* GNU gfortran compiler and GNU make
* *optionally* GNU octave

These are fairly standard packages/programs available on all major Linux distribitions.

## Installation
* simply extract the supplied zip file to a desired location

## Directory structure
```
JOZSO
├── dat
│   └── extformf.dat
├── log
├── obj
├── res
│   ├── maprajz.m
│   └── trajz.m
├── src
│   ├── jozso.f90
│   └── odeint.f90 !note that, it is not shipped with JOZSO
├── cgws.config
├── dev.config
├── ext.config
├── makefile
├── sahu.config
└── user.config
```

## Short description of files
* the file **dat/extformf.dat** consists the parameters used for defining a custom potential
* the **log** directory is for log files created by **jozso**
* the **obj** directory is used to store the **.mod** files created by the compiler
* **jozso** will place all the output files into directory **res**
    * you also find here two small octave scripts, which can be used to quickly
    generate plots from the results:
        * in the directory **res** the command 'octave -f maprajz.m' will result the file 'map.eps' (after a mode=1 run)
        * in the directory **res** the command 'octave -f trajz.m' will result the file 'ktraj.eps' after a mode=2 run
* **src**: source code of the main program. You should place here a copy of odeint from *Numerical Recipes*.
* the **makefile** controls the compilation


## Config files
According to the used potential type, the program's behaviour can be controlled through the following config files:
* cgws.conf: for parameters controlling Wood-Saxon type potential
* sahu.conf: for parameters controlling Sahu type potential
* ext.conf: for parameters controlling Wood-Saxon type potential

A comprehesive description of the parameters used can be found in the chapter 3 of<br>
[http://arxiv.org/abs/1711.04619](http://arxiv.org/abs/1711.04619)

* user.conf 
    * here you can change the default names of data,result,log and config 
    files
* dev.conf
    * internal constant used during the development: do not touch it

## Compiling

In the *JOZSO* directory issue the following commands:
```shell
make clean; make
```
You should not get any errors (warnings are possible, due to different gfortran configurations).


## Executing
In the **JOZSO** directory issue:
```
./jozso
```

optional parameter can be passed to the program:
* **-h** for getting a short help message
* **-1** *or* **-cgws** for chosing Wood-Saxon potential, it is the **default**
* **-2** *or* **-sahu** for Sahu-type potential
* **-4** *or* **-ext** for external, custom potential

## Troubleshooting
If you are encountering problems, bugs please contact:  [noszaly.csaba@gmail.com](mailto:noszaly.csaba@gmail.com)
