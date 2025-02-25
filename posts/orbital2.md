+++
title = "Cómo simular dos cuerpos en el espacio pt2"
tags = ["fisica", "blog"]
+++

# La implementación en computadora

De seguro estás llegando de [aquí](../orbital). Si es el caso, hola bienvenidx. Empezaremos explicando qué vamos a hacer, siguiendo el siguiente [artículo](https://www.cambridge.org/core/journals/acta-numerica/article/abs/geometric-numerical-integration-illustrated-by-the-stormerverlet-method/E55395D5DD7A4E0526D10EA74DA6C46B) (si quieren el documento pdf completo deposítenme 65 millones de pesos).

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

tendriamos que obtener este *mallado* de la siguiente manera:

\begin{equation}
\begin{array}{ccc}
    v_n = \frac{q_{n+1}-q_{n-1}}{2h} & v_{n-\frac{1}{2}} = \frac{q_{n}-q_{n-1}}{h} & q_{n-\frac{1}{2}} = \frac{q_{n}+q_{n-1}}{2}   \\
\end{array}
\end{equation}

para $v_{\rho}$ y $q = \rho$. A partir de lo anterior podemos obtener $v_{n+\frac{1}{2}},\ q_{n+1},\ v_{n+1}$ mediante las ecuaciones:[^1]

\begin{align}
    v_{n+\frac{1}{2}} &= v_n + \frac{h}{2}f(q_n)\\
    q_{n+1} &= q_n + h v_{n+\frac{1}{2}}\\
    v_{n+1} &= v_{n+\frac{1}{2}} + \frac{h}{2}f(q_{n+1})
\end{align}

Con eso debería de estar todo listo. Podemos ver [los resultados](../orbital3) a continuación.

[^1]: Hairer E, Lubich C, Wanner G. Geometric numerical integration illustrated by the Störmer–Verlet method. Acta Numerica. 2003;12:399-450. doi:10.1017/S0962492902000144
