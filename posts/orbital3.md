+++
title = "Cómo simular dos cuerpos en el espacio pt3"
tags = ["fisica", "blog"]
+++

# Antes de continuar

Me di cuenta que para la primera entrada de este proyecto dejé muchas cosas sin explicar. Aprovecho que logré despejar mi cabeza y me siento mejor en general para explicarlas:

## El plano orbital

Recordemos que habíamos establecido que, en el sistema de dos cuerpos:

\begin{equation}
    m\vec{r}\times \dot{\vec{r}} = \vec{L}
\end{equation}

Era una constante, y que se supone que esto generaba un plano respecto al vector director del centro de masas del sistema. Veamos por qué.

Un resultado muy famoso de cálculo vectorial involucra dos vectores, $\vec{v},\ \vec{w}$, teniendo la relación:

\begin{equation}
    \vec{v} \cdot \vec{v}\times\vec{w} = 0
\end{equation}

El por qué ya ha sido explicado por gente mucho más lista que yo entonces avancemos com la prueba de adeveras.

Vamos a aplicar producto escalar entre $\vec{L}$ y $\vec{r}$. Usando la definición de $\vec{L}$ tenemos:

\begin{align}
    \vec{L} \cdot \vec{r} &= m \vec{r} \times  \dot{\vec{r}} \cdot \vec{r}  \\
    &= 0\\
\end{align}

Esto nos brinda la ecuación $L_x x + L_y y + L_z z = 0$, con $L_{x,y,z}$ valores constantes. La anterior es la ecuación de un plano que emana del origen.

## Las soluciones exactas de la ecuación para $\ddot{\rho}$

Haciendo cambios de variable podemos obtener que la solución a la ecuación

\begin{equation}
    \ddot{\rho} = \frac{L^2}{\mu^2\rho^3} -\frac{G(M_1 + M_2)}{\rho^2}
\end{equation}

Tiene de solución a

\begin{equation}
    {\rho} = \frac{L^2}{K \mu^2 (M_1 + M_2)}\frac{1}{\epsilon \cos(\theta-\theta_o) + 1}
\end{equation}

Con $\epsilon$ definido por $\epsilon = A \frac{L^2}{K\mu^2(M_1+M_2)}$, siendo A un valor constante. Esto lo incluiremos en nuestro trabajo, y necesitaremos usar los métodos que antes describí para obtener dos soluciones:

1. La solución numérica de la ecuación que describe a $\ddot{\rho}$
2. La parametrización del sistema respecto del tiempo

Es decir, que usamos la solución analítica de $\ddot{\rho}$ para observar cómo se mueven los cuerpos respecto del tiempo y para ver qué tan bien se ajusta nuestra integración numérica al valor que deberíamos de tener.   

# Los resultados ahora sí

