---
layout: page
title: Python
---

# [CLES_2paired](https://github.com/tulimid1/CLES/blob/main/CLES/CLES.py)
---

Calculate common language effect size for 2 paired samples. See [Using_CLES.ipynb](https://github.com/tulimid1/CLES/blob/main/Using_CLES.ipynb) for a notebook of given examples. 

## Syntax
---
    import CLES as CL

[thetaHat = CL.CLES_2paired(data1, data2)](#a)

## Description
---
### A
[thetaHat](#thetahat) = CL.CLES_2paired([data1](#data1), [data2](#data2)) returns common language effect size for 2 paired samples. [example](#example-1)

## Examples 
---
### Example 1
Generate some data and calculate common language effect size. 

    mu = np.array([3, 5])
    sigma = np.array([[1, 0.6], [0.6, 3]])
    data = np.random.multivariate_normal(mu, sigma, (100,))
    CL.CLES_2paired(data[:,0], data[:,1])

thetaHat = 91.08

## Input Arguments
---
### ```data1```
Data vector 1. 

Vector of data from group 1. 

Data Types: (vector, numeric)

### ```data2```
Data vector 2. 

Vector of data from group 2. 

Data Types: (vector, numeric)

## Output
---

### ```thetaHat```
Effect size. 

Common language effect size. This value will be between 50 andn 100. This value can be interpreted as the percentage or chance a value from one group is larger than a value from the other group. A [thetHat](#thetahat) of 50 would me groups are essentially from same distribution. A [thetaHat](#thetahat) of 100 would mean that 100% of the data in one group is larger than the data in the other group. 

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