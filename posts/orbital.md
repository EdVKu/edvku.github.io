+++
title = "Cómo simular dos cuerpos en el espacio"
tags = ["fisica", "blog"]
+++

# Cómo simular dos cuerpos en el espacio

Hola de nuevo. Llevo casi 4 meses sin actualizar este que es mi blog porque no he querido ni he sabido qué agregar. Afortunadamente ya sé qué agregar. Les enseñaré a simular dos cuerpos como Dios quiso. Sin asumir que uno no se mueve porque está muy grande ni que se mueven en circulos ni ninguna de esas payasadas que hacen los físicos mediocres como lo era yo hace 10 meses. Nada de eso. Aqui iniciaremos solamente asumiendo un sistema con momento angular constante y momento lineal cero, dos condiciones que nos servirán y se pueden observar en la vida real. Empecemos:

# Las Matemáticas

Vamos a usar matemáticas, para variar. No espero que entiendan todo, pueden saltarse a [cuando me pongo a programar](/orbital2.md) sin que se enteren de nada, no se preocupen. Lo que haré es presentar las condiciones que mencioné arriba en forma de ecuaciones, aplicar derivadas y obtener **ecuaciones de movimiento**.

Tienes dos objetos con masas $M_1$, $M_2$ que se mueven siguiendo vectores de dirección $\vec{r_1} = (x_1(t),y_1(t),z_1(t))$, $\vec{r_2} = (x_2(t),y_2(t),z_2(t))$, las cuales son funciones que dependen del tiempo que no conocemos. Lo que al final obtendremos son ecuaciones para sus _aceleraciones_, y le pediremos muy amablemente a la computadora que nos brinde soluciones usando estas ecuaciones, y valores iniciales (también llamados _valores de frontera_). Si no son amables, su código no va a correr y van a tener $1923012380$ años de código mal optimizado.

Vamos a simplificar algunas cosas antes de continuar. Para empezar, tenemos que agregar lo que antes mencioné, la conservación del momento lineal y del momento angular. Esto es:

$\begin{equation} 
    \vec{r_1}M_1 + \vec{r_2}M_2= 0\\ 
\end{equation}$

$\begin{equation}
    \mu(\vec{r} \times \dot{\vec{r}})= L\\
\end{equation}$

Agregué dos nuevas variables, $\mu,\ \vec{r}$, las cuales defino como:

$\begin{equation}
    \frac{1}{\mu} = \sum_{i=1}^2 \frac{1}{M_i}
\end{equation}$

$\begin{equation}
    \vec{r} = \vec{r_1} - \vec{r_2}
\end{equation}$

Y usaremos en un momento. Ahora regresemos a la ecuación 1. Reorganizandola un poco, podemos obtener $\vec{r_2}$ en términos de $\vec{r_1}$ o viceversa. Si usamos también la ecuación 4 obtenemos definiciones para $\vec{r_1},\ \vec{r_2}$ en términos de $\vec{r}$:

$\begin{equation}
    \vec{r_1} = \frac{M_2}{M_1 + M_2}\vec{r}
\end{equation}$

$\begin{equation}
    \vec{r_2} = -\frac{M_1}{M_1 + M_2}\vec{r}
\end{equation}$

Si asumimos que todas las masas que usaremos se quedan donde están, obtendremos descripciones para las velocidades de ambos cuerpos en términos de este nuevo vector $\vec{r}$. Si además usamos la ecuación 3 obtenemos que las ecuaciones 5 y 6 se pueden escribir como:

$\begin{equation}
    \vec{r_1} = \frac{\mu}{M_1}\vec{r}
\end{equation}$

$\begin{equation}
    \vec{r_2} = -\frac{\mu}{M_2}\vec{r}
\end{equation}$

Usaremos algo llamado **Lagrangiano** para obtener las ecuaciones de movimiento. Este es definido para este caso particular como:

$\begin{equation}
    \mathcal{L}(\vec{r_1},\vec{r_2},\dot{\vec{r_1}},\dot{\vec{r_2}},t) = \frac{M_1}{2}\left(\dot{\vec{r_1}}^2\right) + \frac{M_2}{2}\left(\dot{\vec{r_2}}^2\right) +
     \frac{GM_1M_2}{\vert\vec{r_1}-\vec{r_2}\vert}
\end{equation}$

Que podemos reescribir como:

$\begin{equation}
    \mathcal{L}(\vec{r},\dot{\vec{r}},t) = \frac{\mu}{2}\left(\dot{\vec{r}}^2\right) +
     \frac{G\mu(M_1+M_2)}{\vert\vec{r}\vert}
\end{equation}$

Muy bonito. Antes de empezar a derivar cosas vamos a definir qué coordenadas nos convendría usar. No le pienses mucho ya hice eso por ti vamos a usar coordenadas esféricas aplicadas a un caso particular que surge de una de nuestras condiciones iniciales.

Cuando asumimos que nuestro sistema tiene un solo momento angular esencialmente nos permitimos asumir que todo el movimiento ocurria en un plano, o lo que es lo mismo, que $\vec{r_1},\ \vec{r_2},\ \vec{r}$ pueden ser descritas asumiendo que una de las tres dimensiones es constante.

Ahora usando [las ecuaciones Euler-Lagrange](https://academia-lab.com/enciclopedia/ecuacion-de-euler-lagrange/) obtendremos las ecuaciones de movimiento que necesitamos.