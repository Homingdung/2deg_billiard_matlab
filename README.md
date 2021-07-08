# 2deg_billiard_matlab

## Introduction
This is a funded summer internship project under the supervision of Dr. Martin Richter, University of Nottingham.

**Title**: Transfer operator for the standard map

**Supervisor**: Dr Martin Richter

**Research themes**: nonlinear dynamics; chaos; linear operators

This project focuses on dynamical systems like known from lectures about Hamiltonian Dynamics. Instead of propagating single trajectories, we will consider densities of initial conditions and ask who these densities evolve with time. The object of interest is the so called Transfer Operator, or Frobenius Perron Operator which governs how densities are evolving.  As part of this project, you will have to express this operator in a suitable function basis. As a model for the dynamics, we will focus on one of the most widely studied toy models, the so called Standard Map. Its main advantage is its computational simplicity despite the richness of effects it can show: A simple parameter allows to tune the behaviour from completely regular over a mixed-phase space where chaotic and integrable dynamics coincide to a fully chaotic behaviour. Using the derived transfer operator, you will investigate how a numerical scheme based on a finite number of basis functions behaves. More precisely, you will investigate how error rates decay compared with expected rates derived in another context.

**References**:
+ Cvitanovic, Predrag, et al. "Chaos: classical and quantum." ChaosBook. org (Niels Bohr Institute, Copenhagen 2005) 69 (2005): 25.
+ Bøggild, Peter, A. Kristensen, and Poul Erik Lindelof. "Magnetic focusing in triangular electron billiards." Physical Review B 59.20 (1999): 13067.

## Kicked system: a brief introduction

### Standard Map
This is a visualization of standard map with different value of K for Kicked Hamiltonian.

![kickedsystem](https://latex.codecogs.com/gif.latex?%5Ctheta_%7Bn&plus;1%7D%3D%5Ctheta_n&plus;%5Cpi%20p_n%20%5C%5C%20%5C%5C%20p_%7Bn&plus;1%7D%3Dp_n&plus;%5Cfrac%7BK%7D%7B%5Cpi%7Dsin%28%5Ctheta_n&plus;%5Cpi%20p_n%29)




![sm1](https://user-images.githubusercontent.com/57780176/124786309-84454d00-df3f-11eb-9d7a-fe69200f7e0a.gif)![sm2](https://user-images.githubusercontent.com/57780176/124786337-8ad3c480-df3f-11eb-8386-ab938cebb52e.gif)![sm4](https://user-images.githubusercontent.com/57780176/124786408-98894a00-df3f-11eb-940f-8509dd04ae04.gif)![sm6](https://user-images.githubusercontent.com/57780176/124786474-a50da280-df3f-11eb-9b03-bc872552d51d.gif)

More pictures are shown here:

![sm1](https://user-images.githubusercontent.com/57780176/124787041-1e0cfa00-df40-11eb-9f4f-5d608df56158.png)
![sm2](https://user-images.githubusercontent.com/57780176/124787060-21a08100-df40-11eb-9d47-97369384495f.png)
![sm3](https://user-images.githubusercontent.com/57780176/124787115-2cf3ac80-df40-11eb-9203-8544451506c4.png)
![sm4](https://user-images.githubusercontent.com/57780176/124787133-30873380-df40-11eb-937b-4024c49fe8ba.png)
![sm5](https://user-images.githubusercontent.com/57780176/124787138-3250f700-df40-11eb-8af3-7ba8df2ea139.png)
![sm6](https://user-images.githubusercontent.com/57780176/124787143-33822400-df40-11eb-84ce-29230d0231b3.png)

### Inverse mapping under certain density function

For certain density function:

![densityfunction](https://latex.codecogs.com/gif.latex?%5Crho%3A%5B0%2C2%5Cpi%5D%5Ctimes%28-1%2C1%29%5Cto%5B0%2C%5Cinfty%29%2C%20%5Crho%3Dsin%28%5Cfrac%7B%5Ctheta%7D%7B2%7D%29%5E%7B10%7Dcos%28%5Cfrac%7B%5Cpi%20p%7D%7B2%7D%29%5E%7B10%7D)

The inverse mapping could be obtained as:

![inversemapping](https://latex.codecogs.com/gif.latex?p_%7Bn&plus;1%7D%3Dp_n-%5Cfrac%7BK%7D%7B%5Cpi%7Dsin%28%5Ctheta_n%29%5C%5C%20%5Ctheta_%7Bn&plus;1%7D%3D%5Ctheta_n-%5Cpi%28p_n-%5Cfrac%7BK%7D%7B%5Cpi%7Dsin%28%5Ctheta_n%29%29)


![untitled](https://user-images.githubusercontent.com/57780176/124962595-b8d80800-e016-11eb-8675-c08e6cfbdc01.png)


If we apply the inverse mapping for system for 20 times:

![inverse_0 02](https://user-images.githubusercontent.com/57780176/124962318-63036000-e016-11eb-82a6-e967f460dde5.gif)
![invesre2](https://user-images.githubusercontent.com/57780176/124962329-64cd2380-e016-11eb-8412-ebc70773e8f6.gif)
![invesr3](https://user-images.githubusercontent.com/57780176/124962335-65fe5080-e016-11eb-9d29-7f29164dcffb.gif)
![inverse4](https://user-images.githubusercontent.com/57780176/124962340-67c81400-e016-11eb-9f53-382bdda2d6ff.gif)
![Jul-08-2021 18-01-53](https://user-images.githubusercontent.com/57780176/124962512-a067ed80-e016-11eb-9576-68b9e321e9f4.gif)




