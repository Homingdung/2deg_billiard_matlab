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

$\theta_{n+1}=\theta_n+\pi p_n$

$p_{n+1}=p_n+\frac{K}{pi}sin(\theta_n+\pi p_n)$

![sm1](/Users/peter/Desktop/2deg_billiard_matlab/graphs/sm1.gif)






![sm2](/Users/peter/Desktop/2deg_billiard_matlab/graphs/sm2.gif)



![sm4](/Users/peter/Desktop/2deg_billiard_matlab/graphs/sm4.gif)



![sm5](/Users/peter/Desktop/2deg_billiard_matlab/graphs/sm5.gif)



![sm6](/Users/peter/Desktop/2deg_billiard_matlab/graphs/sm6.gif)



More pictures are shown here:


![sm1](/Users/peter/Desktop/2deg_billiard_matlab/graphs/sm1.png)



![sm2](/Users/peter/Desktop/2deg_billiard_matlab/graphs/sm2.png)



![sm3](/Users/peter/Desktop/2deg_billiard_matlab/graphs/sm3.png)

![sm4](/Users/peter/Desktop/2deg_billiard_matlab/graphs/sm4.png)

![sm5](/Users/peter/Desktop/2deg_billiard_matlab/graphs/sm5.png)

![sm6](/Users/peter/Desktop/2deg_billiard_matlab/graphs/sm6.png)

### Inverse mapping under certain density function

For certain density function:

$\rho:[0,2\pi]\times(-1,1)\to[0,\infty), \rho=sin(\frac{\theta}{2})^{10}cos(\frac{\pi p}{2})^{10}$



The inverse mapping could be obtained as:

$p_{n+1}=p_n-\frac{K}{\pi}sin(\theta_n)$

$\theta_{n+1}=\theta_n-\pi(p_n-\frac{K}{\pi}sin(\theta_n))$



The density function is shown as below:


![density](/Users/peter/Desktop/2deg_billiard_matlab/graphs/density.png)


If we apply the inverse mapping for system for 20 times:

![inverse_0.02](/Users/peter/Desktop/2deg_billiard_matlab/graphs/inverse_0.02.gif)



![inverse_2.4](/Users/peter/Desktop/2deg_billiard_matlab/graphs/inverse_2.4.gif)



![inverse_10](/Users/peter/Desktop/2deg_billiard_matlab/graphs/inverse_10.gif)





