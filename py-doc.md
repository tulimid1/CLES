---
layout: page
title: Python
<!-- permalink: /Python/ -->
---

# [function](https://github.com/tulimid1/CLES/blob/main/CLES/CLES.py)
---

Description. See [Using_CLES.ipynb](https://github.com/tulimid1/CLES/blob/main/Using_CLES.ipynb) for a notebook of given examples. 

## Syntax
---
    import CLES as CL

[outarg = CL.function(inarg1, inarg2)](#a)

[outarg = CL.function(inarg1, inarg2, Name=Value)](#b)

## Description
---
### A
[thetaHat](#thetahat) = CL.function([inarg1](#inarg1), [inarg2](#inarg2)) returns a ... . [example](#example-1)

### B 
[thetaHat](#thetahat) = CL.function([inarg1](#inarg1), [inarg2](#inarg2), [Name=Value](#name-value-arguments)) returns ... with additional options specified by one or more name-value pair arguments. For example, you can do this or that. [example](#example-2)

## Examples 
---
### Example 1
Description 

    CODE

thetaHat = 

### Example 2 
Description

    CODE
    
thetaHat = 

## Input Arguments
---
### ```inarg1```
Short description

Long description

Data Types: (X, Y)

### ```inarg2```
Short description

Long description

Data Types: (X, Y)

### Name-Value Arguments

Specified optional pairs of ```Name=Value``` arguments. ```Name``` is the is the argument name and ```Value``` is the corresponding value. You can specify several name and value pair arguments in any order as ```Name1=Value1,...,NameN=ValueN```. 

**Example**: ```name1=value1, name2=value2``` specifies blah blah blah . 

### ```name1```
Short description (default=X)

Long description

Data Types: (X, Y)

### ```name2```
Short description (default=X)

Long description

Data Types: (X, Y)

## Output
---

### ```thetaHat```
Effect size. 

Common language effect size. This value will be between 50 andn 100. This value can be interpreted as the percentage or chance a value from one group is larger than a value from the other group. A [thetHat](#thetahat) of 50 would me groups are essentially from same distribution. A [thetaHat](#thetahat) of 100 would mean that 100 % of the data in one group is larger than the data in the other group. 

Data Types: (scalar, float, numeric)

## More About 
---

[Lecture](https://github.com/joshcash9/Statistics_BME/blob/master/04_effect_power.pdf)

I refrained from outputting size of effect (e.g., 'small', 'medium', 'large') because these are arbitrary and should be thought of as such. 

## Tips 
---

## Issues and Discussion 
---

[Issues](https://github.com/tulimid1/CLES/issues) and [Discussion](https://github.com/tulimid1/CLES/discussions).

If you don't know how to use github (or don't want to), just send me an [email](mailto:tulimid@udel.edu). 
