# Solving Ordinary Differential Equation (ODEs):

**ODEs:** Single variable equations that involve an arbitrary amount of derivatives of that function wrt that variable.

**ODE System:** System of ODEs. Linear or non linear.

**Problem w non linear equations:** harder. Linear eqs are simpler given boundary conditions. 

Classical computers can only use non continuous data. So one can only estimate solutions of hard ODEs in a 
1D region [t_0, t_f] by obtaining their images given a mesh {t_i} = i(t_f-t_0)/n, where n is a natural number
greater than 0 that we can choose. Bigger n implies finer mesh but longer computation time (usualy of order
$O(n)$).

### Euler's Method
Given an ODE $x' = f(x)$:

* Choose N steps and p step size.
* Get a mesh based on the previously chosen parameters.
* Obtain initial conditions for x.
* Fit a linear model for $x(t_n) = x(t_{n-1}) + f(x_{n-1})p$.
* Repeat for all $t_i \in [t_o, t_f]$ defined as $t_i = \{i\cdot\frac{t_f-t_o}{2} \vert i \in \{1,2,\dots, N\}\}$.

If we choose bad step sizes, steps, etc, we might mess up and get an unstable model (i.e. a divergent model).

for 2nd order ODE n dimensional systems we have the option to create a 2n dimensional system where there are
the n original 2nd order eqs written as the derivatives of the other n 1st order eqs that you can define. That way you 
can use vector Euler method. This strategy to augment the dimensionality of the system has been used in Hamiltonian
mechanics.

The basic procedure is:

* Convert ODE to a first order system
* Write program that can solve first order systems
* Get a numerical aproximation

In general we want $y(t) = \int_{t_o}^{t_f}dt f(t) + y(t_o)$. 

# Alternative methods for approximating ODEs:

Given a function $y'(t) = f(t)$ we can obtain its Taylor Series expansion around $t_o$:

$$y(t) = y(t_o) + (t-t_o)y'(t_o) + O(t^2)$$

up to $t^2$.

### Local error

Considering an approximation of order $O(h^{p+1})$, we have the total number of steps being $N = \frac{\Delta}{h}$.

### Predictor-Corrector Euler Method

**Predictor:** 

**Corrector:**

# Runge-Kutta Methods

Family of methods based on the ability one has to obtain a Taylor approximation of a given function described as an ODE.

# Simplectic Method/Euler-Cromer Method

You can't conserve energy by solving the system using previous methods. The symplectic methods kinda conserve the energy by modifying Euler's method the following way:

