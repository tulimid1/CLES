---
layout: page
title: Python
---

# [CLES.one_sample](https://github.com/tulimid1/CLES/blob/main/CLES.m)
---

Calculate common language effect size for 1 sample. See [Using_CLES.mlx](https://github.com/tulimid1/CLES/blob/main/Using_CLES.mlx) for a notebook of given examples. 

## Syntax
---
    CL = CLES();

[thetaHat = CL.one_sample(data1, mu)](#a)

## Description
---
### A
[thetaHat](#thetahat) = CL.one_sample([data1](#data1), [mu](#mu)) returns common language effect size for 1 sample comparing mean to [mu](#mu). [example](#example-1)


## Examples 
---
### Example 1
Generate some data and calculate the common language effect size.  

    A = normrnd(5, 3, [100,1]);
    CL = CLES(); 
    theta = CL.one_sample(A, 3)

thetaHat = 95.0

## Input Arguments
---
### ```data1```
Data vector. 

Vector of data to find common language effect size against. 

Data Types: (vector, numeric)

### ```mu```
Mean for comparison

Mean to compare [data](#data) vector against. 

Data Types: (scalar, float)

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