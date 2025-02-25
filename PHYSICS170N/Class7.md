# Computational Complexity

## Sorting Algorithms

Consider the following set $A \equiv \{a_1,a_2,\dots,a_n\} \subseteq \mathbb{Z}$. We want to obtain a set of permutations $\phi$ such that $\phi(A) = A^{'} =\{a_1^{'},\dots, a_n^{'}\}$ where $a_1^{'} \leq \dots \leq a_n^{'}$.

To do that there are a number of algorithms we can use:

### Insertion Sort

Assume $A[1 \colon j]$ is sorted. Check $A[j]$ and compare it to other numbers, if lower than them, put it to its right. I present the pseudocode for a hypothetical implementation of _*Insertion Sort*_:

### Merge Sort

This is an algorithm that belongs to the _*Divide & Conquer*_ family of algorithms. This algo. lets you divide the set in two, from $a_1$ to $a_{\frac{n}{2}}$ & $a_{\frac{n}{2} + 1}$ to $a_n$ where $n = 2^p$. You sort each half, then sort both halves. The pseudocode for this implementation is as follows:

## Big O Notation

Define the time it takes for an algorithm to sort $A$, given $\vert A \vert = n$, to be $T(n)$.

Consider $O(f(n))$. This means that for all $n>n_o$ for some $n_o \in \mathbb{N}$, then 

$$T(n) < c f(n)$$

For a constant value $c$.

## $\Omega$ Notation

Consider $\Omega(f(n))$. This means that for all $n>n_o$ for some $n_o \in \mathbb{N}$, then 

$$T(n) \geq c_1 f(n)$$

For a constant value $c_1$.

## $\Theta$ Notation

Consider $\Theta(f(n))$. Then $T(n)$ is both $O(n)$ and $\Omega(n)$.

## Algo. Analysis

To analyze our models we need a computer (of course) and a process that lets us obtain insigths about it. Here are some examples:

* RAM Model: 

## Complexity Analysis for Insertion Sort

1. Best Case Scenario.- The algo. is already sorted, which makes the time it takes to implement it linear with respect to its size. This means that the time it takes is:

$$T(n) = c_1 n + c_2$$

For n the size of the set.

2. Worst Case Scenario.- The algo. takes a quadratic time with respect to its size. This means:

$$\begin{align*}
T(n) &= \sum_{i=1}^n c_0 i +c_4\\
&=c_1 n^2 + c_2 n + c_3\\
\end{align*}
$$

## Complexity Analysis for Merge Sort

Once each half is sorted, you need to check at most $\alpha n/2 = \alpha_1 n$ cases when comparing the first and the second half. Then the total time for this is at most, given $\alpha_i = 2^{-i} \alpha$ for a given measurable $\alpha$:

$$\begin{align*}
T(n) &= 2 T\left(\frac{n}{2}\right) + \alpha_0 n\\
&= 4\left(T\left(\frac{n}{4}\right)\right) + \alpha_1 n + \alpha_0 n\\
& \dots\\
&= 2^{p}T(1) + \alpha 2^p p\\
\end{align*}
$$

Also $T(n) = \Theta(n \log n)$.

## Polynomial Time Algorithms

Time for worst case is $O(n^k)$ for some $k>0$. Some graph theory problems are in Polynomial Time.

### Graph Theory Problems

* Cycle: Process that begins and ends at the same point.

* Directed graph: Graph that has a given direction in its edges (you can only traverse it one way).

* Simple Path: A path in a graph where you pass through every vertex at most once.

* Hamiltonian Cycle: Simple path that contains every vertex once.

* Euler Tour: Cycle through each edge in a directed graph.

Given a weighted n-graph $(E,V,\omega)$ check how long is the shortest simple path between two vertices $V_0 \to V_N$ (solvable in polynomial time).

Given a weighted n-graph $(E,V,\omega)$ check how long is the longest simple path between two vertices $V_0 \to V_N$ (unsolvable in polynomial time, solution can be checked in polynomial time).

If you can find a Hamiltonian Cycle for the graph, you find a _*longest symple path*_. Determining whether a graph contains a Hamiltonian Cycle is **NOT** solvable in polynomial time.

A problem is $\textbf{P}$ if it's solvable in polynomial time. It is $\textbf{NP}$ if it can be verified to be solvable in polynomial time. You don't know if the solution is in polyomial time. It is $\textbf{NPC}$ (also referred to as $\textbf{NP Complete}$) if the following condition holds:

> If a given problem which is NP complete can be solved in polynomial time, then evey problem in NP can ve solved in polynomial time.

So far we know $P \subseteq NP$. If $P = NP$ then if you can verify a problem in polynomial time you can solve it in polynomial time.

## References

Cormun, Leisenson, Rivest & Stein. _*Introduction to Algorithms*_.