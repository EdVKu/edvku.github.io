+++
title = "Cómo simular dos cuerpos en el espacio pt2"
tags = ["fisica", "blog"]
+++

# La implementación en computadora

De seguro estás llegando de [aquí](../orbital). Si es el caso, hola bienvenidx. Empezaremos explicando qué vamos a hacer, siguiendo el siguiente [artículo](https://doi.org/10.1103/PhysRev.159.98) (si quieren el documento pdf completo deposítenme 65 millones de pesos).

## Espacio fase

El espacio fase es un espacio vectorial compuesto por una coordenada y su derivada temporal $\left(q, \dot{q}\right)$. 

Es utilizado para muchas cosas en dinámica no lineal y teoría del caos, principalmente porque es muy difícil resolver las ecuaciones diferenciales trabajadas ahi (este caso en particular no entra dentro de los sistemas caóticos pero también sirve para otras cosas).

El espacio fase que podemos construir a partir de lo obtenido en el capitulo anterior es de la forma:

\begin{align}
    v_{\rho} &= \dot{\rho}\\
    \dot{v_{\rho}} &= f(\rho)
\end{align}

con $f(\rho) = \frac{L^2}{\mu^2\rho^3} -\frac{G(M_1 + M_2)}{\rho^2}$, y de la forma:

\begin{align}
    v_{\theta} &= \frac{L}{\mu \rho^2}\\
    \dot{v_{\theta}} &= \frac{-2L}{\mu \rho^3}v_{\rho}
\end{align}

para $\theta$, donde $L \equiv \mu v_{\theta}(0)  \rho^2(0)$ es obtenido a partir de las condiciones iniciales que le queramos poner al sistema. 

Podemos notar que sólo tenemos que aplicar integración numérica al espacio fase de $\rho$, lo cual está muy bien porque mientras más cosas tengamos que hacer depender de la aritmética de punto flotante peor resultado vamos a obtener (es posible obtener una solución exacta para este caso pero no tengo la paciencia para hacerlo).

Ahora pasaremos al

## Método Stormer-Verlet

Lo que haremos es *discretizar* el espacio fase. Esto significa que vamos a elegir un valor $h$ para el cual generaremos una lista finita de coordenadas del espacio fase, que deberían de permitirnos acercarnos cada vez más a los valores ideales obtenibles de la solución exacta para nuestro sistema.

Según el

### Método Stormer-Verlet

podemos obtener $q_{n+1},\ v_{n+1}$ mediante las ecuaciones:[^1]

\begin{align}
    q_{n+1} &= 2q_n - q_{n-1} + \frac{h^2}{2} v_{n+\frac{1}{2}}\\
    v_{n+1} &= \frac{q_{n+1}-q_{n-1}}{2h}
\end{align}

Con eso debería de estar todo listo. Podemos ver [los resultados](../orbital3) a continuación.

[^1]: Verlet, L. (1967). Computer" experiments" on classical fluids. I. Thermodynamical properties of Lennard-Jones molecules. Physical review, 159(1), 98.
