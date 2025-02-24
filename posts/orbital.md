+++
title = "Cómo simular dos cuerpos en el espacio"
tags = ["fisica", "blog"]
+++

# Cómo simular dos cuerpos en el espacio

Hola de nuevo. Llevo casi 4 meses sin actualizar este que es mi blog porque no he querido ni he sabido qué agregar. Afortunadamente ya sé qué agregar. Les enseñaré a simular dos cuerpos como Dios quiso. Sin asumir que uno no se mueve porque está muy grande ni que se mueven en circulos ni ninguna de esas payasadas que hacen los físicos mediocres como lo era yo hace 10 meses. Nada de eso. Aqui iniciaremos solamente asumiendo un sistema con momento angular constante y momento lineal cero, dos condiciones que nos servirán y se pueden observar en la vida real. Empecemos:

# Las Matemáticas

Vamos a usar matemáticas, para variar. No espero que entiendan todo, pueden saltarse a [cuando me pongo a programar](../orbital2) sin que se enteren de nada, no se preocupen. Lo que haré es presentar las condiciones que mencioné arriba en forma de ecuaciones, aplicar derivadas y obtener **ecuaciones de movimiento**.

Tienes dos objetos con masas $M_1$, $M_2$ que se mueven siguiendo vectores de dirección $\vec{r_1} = (x_1(t),y_1(t),z_1(t))$, $\vec{r_2} = (x_2(t),y_2(t),z_2(t))$, las cuales son funciones que dependen del tiempo que no conocemos. Lo que al final obtendremos son ecuaciones para sus _aceleraciones_, y le pediremos muy amablemente a la computadora que nos brinde soluciones usando estas ecuaciones, y valores iniciales (también llamados _valores de frontera_). Si no son amables, su código no va a correr y van a tener $1923012380$ años de código mal optimizado.

Vamos a simplificar algunas cosas antes de continuar. Para empezar, tenemos que agregar lo que antes mencioné, la conservación del momento lineal y del momento angular. Esto es:

\begin{equation} 
\vec{r_1}M_1 + \vec{r_2}M_2= 0
\end{equation}

\begin{equation}
\mu(\vec{r} \times \dot{\vec{r}})= \vec{L}
\end{equation}

Con $\vec{L}$ un valor constante. Agregué dos nuevas variables, $\mu,\ \vec{r}$, las cuales defino como:

\begin{equation}
\frac{1}{\mu} = \sum_{i=1}^2 \frac{1}{M_i}
\end{equation}

\begin{equation}
\vec{r} = \vec{r_1} - \vec{r_2}
\end{equation}

Y usaremos en un momento. Ahora regresemos a la ecuación 1. Reorganizandola un poco, podemos obtener $\vec{r_2}$ en términos de $\vec{r_1}$ o viceversa. Si usamos también la ecuación 4 obtenemos definiciones para $\vec{r_1},\ \vec{r_2}$ en términos de $\vec{r}$:

\begin{equation}
\vec{r_1} = \frac{M_2}{M_1 + M_2}\vec{r}
\end{equation}

\begin{equation}
\vec{r_2} = -\frac{M_1}{M_1 + M_2}\vec{r}
\end{equation}

Si asumimos que todas las masas que usaremos se quedan donde están, obtendremos descripciones para las velocidades de ambos cuerpos en términos de este nuevo vector $\vec{r}$. Si además usamos la ecuación 3 obtenemos que las ecuaciones 5 y 6 se pueden escribir como:

\begin{equation}
\vec{r_1} = \frac{\mu}{M_1}\vec{r}
\end{equation}

\begin{equation}
\vec{r_2} = -\frac{\mu}{M_2}\vec{r}
\end{equation}

Usaremos algo llamado **Lagrangiano** para obtener las ecuaciones de movimiento. Este es definido para este caso particular como:

\begin{equation}
\mathcal{L}(\vec{r_1},\vec{r_2},\dot{\vec{r_1}},\dot{\vec{r_2}},t) = \frac{M_1}{2}\left(\dot{\vec{r_1}}^2\right) + \frac{M_2}{2}\left(\dot{\vec{r_2}}^2\right) + \frac{GM_1M_2}{\vert\vec{r_1}-\vec{r_2}\vert}
\end{equation}

Que podemos reescribir como:

\begin{equation}
\mathcal{L}(\vec{r},\dot{\vec{r}},t) = \frac{\mu}{2}\left(\dot{\vec{r}}^2\right) + \frac{G\mu(M_1+M_2)}{\vert\vec{r}\vert}
\end{equation}

Muy bonito. Antes de empezar a derivar cosas vamos a definir qué coordenadas nos convendría usar. No le pienses mucho ya hice eso por ti vamos a usar coordenadas esféricas aplicadas a un caso particular que surge de una de nuestras condiciones iniciales.

Cuando asumimos que nuestro sistema tiene un solo momento angular esencialmente nos permitimos asumir que todo el movimiento ocurria en un plano, o lo que es lo mismo, que $\vec{r_1},\ \vec{r_2},\ \vec{r}$ pueden ser descritas asumiendo que una de las tres dimensiones es constante.

Gracias a eso, podemos usar coordenadas cilindricas $(\rho, \theta, z)$ para describir el movimiento de los dos cuerpos, de la siguiente manera:

\begin{align}
    \vec{r_1} &=\frac{\mu}{M_1} \rho \left(\cos(\theta) \hat{i} + \sin(\theta) \hat{j} + \frac{z}{\rho} \hat{k}\right)\\
    \vec{r_2} &= -\frac{\mu}{M_2} \rho \left(\cos(\theta) \hat{i} + \sin(\theta) \hat{j} + + \frac{z}{\rho} \hat{k} \right)
\end{align}

Una vez hecho esto, podremos obtener el Lagrangiano en coordenadas cilíndricas, sabiendo que $z$ es constante:

\begin{equation}
    \mathcal{L}({\rho},\dot{\rho},{\theta},\dot{\theta},t) = \mu\frac{\rho^2\dot{\theta}^2 + \dot{\rho}^2}{2} + \frac{G\mu(M_1 + M_2)}{\rho}
\end{equation}

Notamos que efectivamente el sistema es reducido a uno de dos dimensiones. Ahora usando [las ecuaciones Euler-Lagrange](https://academia-lab.com/enciclopedia/ecuacion-de-euler-lagrange/) obtendremos las ecuaciones de movimiento que necesitamos:

Este sistema es de $3k - n$ grados de libertad, variables independientes (que podemos manipular sin afectar a otras), donde $k$ es el número de cuerpos y $n$ es el número de restricciones que le pusimos al sistema. 

$k = 2$, así que antes de las restricciones tenemos 6 grados de libertad - tres coordenadas espaciales para cada cuerpo. Al restringir el movimiento cuando agregamos las ecuaciones 1 y 4, *perdemos* 4 grados de libertad, al tener dos ecuaciones que relacionan a los dos cuerpos.

Así pues, obtenemos dos grados de libertad, $\left(\rho,\ \theta\right)$. Aplicaremos [las ecuaciones Euler-Lagrange](https://academia-lab.com/enciclopedia/ecuacion-de-euler-lagrange/) a estos dos grados de libertad que nos sobran:
\begin{equation}
    \mu \frac{d}{dt}(\rho^2\dot{\theta}) = 0
\end{equation}
\begin{equation}
    \ddot{\rho} = \rho\dot{\theta}^2 -\frac{G(M_1 + M_2)}{\rho^2}
\end{equation}

La ecuación 13 nos brinda la información de que $\mu \rho^2\dot{\theta} \equiv L$ es un valor constante respecto al tiempo, por lo que podemos reescribir a $\dot{\theta}^2$ como:

\begin{equation}
    \dot{\theta}^2 = \frac{L^2}{\mu^2 \rho^4}
\end{equation}

Sustituyendo este valor en la ecuación 14 tenemos:

\begin{equation}
    \ddot{\rho} = \frac{L^2}{\mu^2\rho^3} -\frac{G(M_1 + M_2)}{\rho^2}
\end{equation}

¡Sorpresa! Obtuvimos una descripción para $\ddot{\rho}$ en términos de $\rho$ solamente. 

Ahora buscamos $\ddot{\theta}$:


\begin{equation}
    \ddot{\theta} = \frac{-2L}{\mu \rho^3}\dot{\rho}
\end{equation}

Notamos que vamos a necesitar obtener el valor para $\rho,\  \dot{\rho}$ en nuestro programa. Esto lo haremos usando un *Método Simpléctico* de solución de ecuaciones diferenciales de segundo orden, el cual veremos [aquí](../orbital2).