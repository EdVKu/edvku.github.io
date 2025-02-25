+++
title = "Class 6"
author = "Eduardo Vázquez Kuri"
tags = ["fisica"]
+++

# Project 3: Phase transitions in a simple classical model of magnetism for Statistical Mechanics

Systems in Statistical Mechanics have a big amount of molecules interacting with each other. As a result, its corresponding phase space is equally large. One must know how to work through large amounts of data.

# Prelude: Some Probability Theory for Statistical Mechanics

## Example: Detection of colorrectal cancer

Assume there is a test that has a 50% chance to detect hidden colorectal cancer (cancer assuming the patient has no symptoms). The probability of a sample of people to have colorrectal cancer is 0.3 percent. Id the person has no colorectal cancel there is still a 3 percent of a positive result. What is the probability of a person from that sample to have colorectal cancer?

Consider Bayes' Theorem

\begin{equation}
P(A/B)P(B) = P(B/A)P(A)
\end{equation}

also written as

\begin{equation}
P(A/B) = \frac{P(A\cap B)}{P(B)}
\end{equation}

For cases where $P(B/A)P(A) = P(A\cap B)$

## Binomial Distribution

Given two events with probabilities $p,\ q = 1-p$ we get that
\begin{equation}
P(X = k) = \binom{n}{k}p^k(1-p)^{n-k}
\end{equation}

## Poisson Distribution

Approximation by:
Given $\lambda = Np$ for big enough n ($n \to \infty$) we get that:

\begin{equation}
\binom{n}{k}p^k(1-p)^{n-k} \approx e^{-\lambda}\frac{\lambda^k}{k!}
\end{equation}


## The problem at hand: The Ising Model

The 2D Ising model is a simple model of a ferromagnetic material with phase transition. It consists of a 2D lattice $L\times L$ of spins $s_j \in \{-1,1\}$. Each spin interacts only with its nearest neighbours. The energy is expressed as:

\begin{equation}
E(\{s_i\}) = -\sum_{\left<i,j\right>}
\end{equation}

This is the *Ising model*. 

Considering normalized energy with $J$, spin with $\hbar/2$, magnetic field with $J/\mu$ for $J$ the exchange energy and $\mu$ the atomic magnetic moments. When the system is in contact with a heat bath a temperature T, the equilibrium probability density is the Boltzmann distribution:

\begin{equation}
\rho(\{s_j\}) = Z^{-1}\exp(-E(\{s_j\})/T)
\end{equation}

Where the partition function is $Z =\sum_{j \in \gamma} \exp\left(-E(\{s_j\})/T\right)$ over all possible configurations.

The phase space is very large, what can we do now?


## Monte Carlo Methods

* **Stochastic process**: Time dependent random process dependant of random variables.

* **Markov chain**: Given a set of states $S = S_{1,2,\dots, n}$, and a choice $S_i \in S$ for $t=t_0$, the process starts and moves sucessively from one state to the other with a probability $P(S)$, which is only dependent upon its previous event. Each move is called a step. Its Markov Chain of t $M(t)$ is defined as the state of the system in a time $t = T>t_0$, starting at $S(t_0)$ and moving w steps with a probability $P(S_{i-1})$ where $S_{i} = S(t = t_0 + i\delta t)$ and $P(0)$ is given. 

Now you have a system that has a certain set of states $S_{1,2,\dots,N}$. Each of those states has an associated probability $\pi_i,\ i \in {0,1,\dots,N-1}$. You don't know that, but you can calculate the ratio $\frac{\pi_i}{\pi_j}$. You want a sample $\sigma_{1,2,\dots,n}$ with the property that as $n \to \infty$, the amount of times we get state i divided by the sample size approaches unity
* **Monte Carlo Markov Chain Algorithim**: Also called Metropolis Algorithm. Used to obtain the value $\left<\kappa\right>$ knowing $\left<\kappa\right>_M$, which approaches $\left<\kappa\right>$ for $M \to \infty$. It goes like this:
    * Initiate the sequence of samples in a state $\sigma_1$.
    * If $\sigma$ is the current state, propose a new state $\sigma'$ according to a conditional probability distro. $q$, namely $q(\sigma\vert \sigma')$ is the probability of proposing $\sigma'$ given that the current state is $\sigma$.

    * Accept the proposed state, add it as the next state in the sample sequence with probability:

    \begin{equation}
    A(\sigma \vert \sigma') = min\left(1,\frac{\sigma}{\sigma'}\right)
    \end{equation}

    If the state is not accepted, (i.e. it is rejected), add the current state to your sequence as the next state.
    Repeat for a large number of states.


