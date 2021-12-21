---
layout: page
title: Python
---

# [CLES_1samp](https://github.com/tulimid1/CLES/blob/main/CLES/CLES.py)
---

Calculate common language effect size for 1 sample. See [Using_CLES.ipynb](https://github.com/tulimid1/CLES/blob/main/Using_CLES.ipynb) for a notebook of given examples. 

## Syntax
---
    import CLES as CL

[thetaHat = CL.CLES_1samp(data)](#a)

[thetaHat = CL.CLES_1samp(data, Name=Value)](#b)

## Description
---
### A
[thetaHat](#thetahat) = CL.CLES_1samp([data](#data)) returns common language effect size for 1 sample comparing mean to 0. [example](#example-1)

### B 
[thetaHat](#thetahat) = CL.CLES_1samp([data](#data), [Name=Value](#name-value-arguments)) returns common language effect size for 1 sample with additional options specified by one or more name-value pair arguments. For example, you can compare to a mean of 15. [example](#example-2)

## Examples 
---
### Example 1
Generate some data and calculate the common language effect size.  

    group2 = np.random.normal(5,3, (100,))
    CL.CLES_1samp(group2)

thetaHat = 95.0

### Example 2 
Generate some data and calculate the common language effect size against a mean of 4. 

    group2 = np.random.normal(5,3, (100,))
    CL.CLES_1samp(group2, mu=4)
    
thetaHat = 55.00

## Input Arguments
---
### ```data```
Data vector. 

Vector of data to find common language effect size against. 

Data Types: (vector, numeric)

### Name-Value Arguments

Specified optional pairs of ```Name=Value``` arguments. ```Name``` is the is the argument name and ```Value``` is the corresponding value. You can specify several name and value pair arguments in any order as ```Name1=Value1,...,NameN=ValueN```. 

**Example**: ```mu=15``` specifies a comparison against a mean of 15. 

### ```mu```
Mean for comparison (default=0)

Mean to compare [data](#data) vector against. 

Data Types: (scalar, float)

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
