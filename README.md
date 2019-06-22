# ADF95

This repo modifies the original version of ADF95. The original way of getting NaN is regarded as fatal error by gfortran although ifort passes it. The new way is IEEE standard compliant.

ADF95 is a modern Fortran module which is used for automatic differentiation. Source code of ADF95 is from this [website](http://cpc.cs.qub.ac.uk/summaries/ADVI). Check [ADF95: Tool for automatic differentiation of a FORTRAN code designed for large numbers of independent variables](https://www.sciencedirect.com/science/article/pii/S0010465505000810?via%3Dihub) for the details. Obtain the paper from [arxiv](https://arxiv.org/abs/cs/0503014).

