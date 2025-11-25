+++
title = "Class 5"
author = "Eduardo Vázquez Kuri"
tags = ["fisica"]
+++

# Quantum Harmonic Oscillator

## Schrödinger's Equation

Weird things happening in QM

* What does a state mean?
* Why can't we encounter the effects of QM in our scales? (A = Decoherence)

Quantum Harmonic Oscillators (QHO)

1. Ubiquitous
2. Theorists LOVE them they're really elegant
3. Interesting Features
    * Eigenstates are coherent states
    * 

Once you describe the Hamiltonian of QHO you get that (for $\hbar = 1, \omega$ given) $H\vert\varphi> = \omega(n+\frac{1}{2})\vert\varphi>$

We can perturb the QHO to obtain the hamiltonian (family) that depends on $\lambda$:

$$H(\lambda) = H + \lambda x^4$$

Note that if a classical particle were to be moving in the now quantic potential it would not feet much of a difference if ir were near $x = 0$ since the potential looks close enough to quartic there. That means that for low energies the classical motion will be harmonic in nature. For high energy, **other things happen** (remove).

# Numerical Matrix Diagonalization

* Focus on numerical methods to diagonalize matrices
* You can do it instantaneously on numpy, scipy, etc but the point is undestanding why that works

## Jacobi Algorithm for Real Symmetric Matrices

1. At each step find the largest off diagonal element, say $S_{pq}$ (or cycle thru each off-diagonal index $p,q$ one at a time)
2. Transform it to an orthogonal matrix $J$ s.t. that element and its symmetric version are both 0
3. Check whether the relative error $\delta <\epsilon$ where $\epsilon$ is the desired error. If not, repeat the previous steps

### Complex Matrices

For a complex number $U = H_r + iH_{im}$ we get that its matrix representation is:

$$U = \begin{pmatrix}
H_r & -H_{in} \\
H_{in} & H_r
\end{pmatrix}$$

One can check that if $O = \begin{pmatrix}
O_r & -O_{in} \\
O_{in} & O_r
\end{pmatrix}$ is orthogonal (i.e $OO^T = \mathbb{I},\ O_rO_{im}^T-O_{im}O_r^T = 0$) then $U$ is unitary (i.e $UU^T = \mathbb{I}$).