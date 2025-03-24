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
    \vec{v} \dot \vec{v}\times\vec{w} = 0
\end{equation}

El por qué ya ha sido explicado por gente mucho más lista que yo entonces avancemos com la prueba de adeveras.

Vamos a aplicar producto escalar entre $\vec{L}$ y $\vec{r}$. Usando la definición de $\vec{L}$ tenemos:

\begin{align}
    \vec{L} \dot \left(\vec{r}\right) &= m\vec{r} \dot \vec{r} \times  \dot{\vec{r}}  \\
    &= 0\\
\end{align}

Esto nos brinda la ecuación $L_x x + L_y y + L_z z = 0$, con $L_{x,y,z}$ valores constantes. La anterior es la ecuación de un plano que emana del origen.

## Las soluciones exactas de las ecuaciones respecto a $\ddot{\vec{r}}$

Haciendo cambios de variable podemos obtener que la solución a la ecuación

