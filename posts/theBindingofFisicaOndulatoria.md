+++
title = "The Binding of Física Ondulatoria"
tags = ["fisica"]
+++

# The Binding of Física Ondulatoria

\tableofcontents 

## Introducción

Hola. Mucho gusto. Mi nombre es Eduardo. Estudio física, se podría decir que soy físico, sólo me falta la tesis, y como 4 materias por cursar, pero ya casi tengo el servicio social liberado. Ahora, dos cosas que me caracterizan y por las que he decidido empezar a escribir son mi incapacidad de prestar atención a otras personas y mi incapacidad de hacer lo que tengo que hacer. Debido a lo primero, casi todo lo que sé de mi carrera lo aprendí por mi cuenta, y debido a lo segundo, en vez de avanzar en mi tesis decidí empezar un blog y jugar a videojuegos. Ahora estoy jugando _The Binding of Isaac: Rebirth_ y me di cuenta que puedo justificar las 29 horas que le he invertido como "investigación" para una clase que nunca daré, o en su defecto, un blog que nadie leerá.

Ahora pues, en este juego interpretas a un niño que se llama Isaac. Isaac tiene una vida muy de mierda, su mamá está loca y al parecer su Dios le dijo que lo tiene que matar (el nombre del juego hace referencia a un evento descrito en la biblia, donde Dios le pide a Abraham que mate a su hijo Isaac, a lo que Abraham sorprendentemente acepta. La verdad no entiendo bien qué inspiró a Dios a hacer eso si se supone que nos ama pero si tienen más dudas mejor lean la Biblia). Ante esto, Isaac se esconde en su cajón de juguetes y muere, o algo así, eso no es importante, sólo quería dar contexto.
Resulta que este juego puede ayudar a explicar un fenómeno físico fundamental. Me atrevería a ponerlo junto con las ecuaciones de Maxwell o las ecuaciones de campo de Einstein en nivel de importancia (lo cual es gracioso porque este efecto explica cosas en cosmología y radiación electromagnética). Está en todos lados, si sales a la calle casi seguramente lo vas a experimentar. Estoy hablando del efecto Doppler. Este efecto describe la frecuencia de las ondas percibidas por un objeto que se mueve a velocidad $v_{obj}$, relativa de otro encargado de emitir dichas ondas, que se mueve con velocidad $v_s$. Si asumimos que el receptor no se mueve y el emisor se acerca al receptor, lo anterior está descrito por la ecuación:

\begin{equation}
\nu_o = \frac{c}{c-v_s}\nu
\end{equation}

Esta ecuación puedes verla en el currículum de física de muchos programas de bachillerato enfocados en ciencias naturales, y nadie realmente te explica de dónde viene, ni cómo se supone que se obtiene a partir de cosas que se agitan rítmicamente en un medio. Todo es muy confuso pero espero que salgas de esta lectura con una nueva perspectiva, y nuevo aprecio, a la ecuación que te presenté. Resulta que Isaac, en su alucinación provocada por su cerebro no queriendo morir, se enfrenta a monstruos, que ataca aventándoles lágrimas que emite de manera periódica (luego de una cantidad constante de segundos de expulsar una lágrima, expulsa otra), la cual viaja a velocidad constante la mayoría de las veces (a veces expulsa un chorro de fluido no específico o láseres, que viajan a velocidades cercanas a la de la luz). Para el ejercicio que les propondré hacer, utilizaremos la iteración más simple de su mecanismo de defensa: Las lágrimas que saca periódicamente.

~~~
    <img src="/assets/isaaccorto.jpg" height="300" class="fig1" />
    <p>
<i>Isaac llorando mientras se acerca a sus lagrimas.</i>
    </p>

~~~

~~~
    <img src="/assets/isaaclargo.jpg" height="300" class="fig1" />
    <p>
<i>Isaac llorando mientras se aleja de sus lagrimas.</i>
    </p>

~~~

~~~
    <img src="/assets/isaacnormal.jpg" height="300" class="fig2" />
    <p>
<i>Isaac quieto mientras llora.</i>
    </p>

~~~



Primero, asumiremos unas cuantas cosas para simplificar nuestro trabajo y obtener el resultado que queremos (si piensan que esto es flojo, les recomiendo conocer a más físicos):	
* Las lágrimas viajan a velocidad constante en dos dimensiones, llamémosla $c = (c(x),c(y))$.
* Isaac acelera lo suficientemente rápido a su velocidad terminal que podemos considerar que en algún momento en el tiempo lo hace a velocidad constante en dos dimensiones, llamémosla $v_I = (v_I(x),v_I(y))$.
* En general, la magnitud de $v_I$ es distinta de la magnitud de $c$.
* Ambas velocidades son muchísimo menores a la velocidad de la luz. Esto sirve para ignorar efectos relativistas, y para sentir que los cuatro años y medio que le invertí a la carrera sirvieron de algo. Esto además nos indica que los segundos, minutos, etc de ambos objetos no cambian.
* El juego nos indica que las lágrimas en general no se pueden mover en direcciones diagonales (sé que existe un item que te permite moverlas en todas direcciones pero imaginaré que no existe).
Ahora pues, empecemos a trabajar.

## Los Cálculos

Antes de hacer cálculos, presentaré un conjunto de ecuaciones de movimiento que serán de utilidad para nuestro trabajo. Estas ecuaciones se les conocen como “ecuaciones de relatividad Galileana” y definen las posiciones espacio-temporales percibidas de dos objetos que se mueven uno respecto del otro. Presentaré las ecuaciones para objetos que se mueven a velocidades constantes, en este caso definiendo a $(x,y)$ como las posiciones de la lágrima respecto a nosotrxs, y a $(x', y')$ como las posiciones de la lágrima respecto a Isaac: 


* $t' = t$
* $x' = x-v_I(x)\cdot t$
* $y' = x-v_I(y)\cdot t$

Observemos algo. Estas ecuaciones nos indican la posición relativa de la lágrima respecto a Isaac, no respecto a nosotros. Nos indican también qué velocidad tendrían las lágrimas para Isaac. Consideremos a, $c' = \frac{d}{dt}(x',y')$, por lo que las ecuaciones anteriores nos brindan:

* $c'(x) = c(x)-v_I(x)$
* $c'(y) = c(y)-v_I(y)$

Los valores tildados nos indican la velocidad/posición que Isaac obtendría de las lágrimas al moverse. Notemos que si Isaac viaja a velocidad $c$ respecto a la lágrima que avienta, percibiría que están quietas. Además, si Isaac se queda quieto, mide la misma velocidad lagrimal que nosotrxs y si se echa para atrás medirá una velocidad lagrimal mayor :D. Esto, como sabemos, no es cierto en general, pero es un pensamiento interesante.
El que Isaac dispare lágrimas de manera periódica nos hace saber que estas las emite a una frecuencia constante medible, llamémosla $\nu$, medida en “1/segundos”, también conocidos como “Hertz”. Igualmente, nos indica que las lágrimas están espaciadas una distancia constante, llamémosla $\lambda$, medida en, yo qué sé, pixeles, no me importa tanto. Unidades de distancia. Una vez más, conjuraré otra ecuación que nos será de utilidad:

* $c = {\lambda}{\nu}$

Esto no es más que la definición de la velocidad adaptada a distancias y tiempos que podemos medir. Se pueden estar preguntado “oye un momento. Estás definiendo vectores como escalares. Qué traes. No seas tonto”, a lo que te respondo 

1. Grosero
2. Tienes razón

La clave acá es considerar ya sea a $c(x)$ o a $c(y)$ en donde ponga $c$, porque la velocidad es la misma en ambos casos y ya quedamos que las lágrimas estas no pueden viajar en diagonal. Es más, lo voy a hacer, para que no digas:

* $c(x) = \lambda\nu$
* $c(y) = \lambda\nu$

Originalmente iba a poner solamente $c(x)$ pero estoy usando Markdown y no me dio hueva ponerlo, felicítenme y díganme lo mucho que aprecian mi compañía y lo bien que les caigo. Ahora, sustituyamos cosas, considerando que $c'(x)=\lambda'\nu'$:

* $\lambda'\nu'= \lambda\nu-v_I(x)$

Ahora, ¿esto nos va a servir para lo que queremos? No directamente. Lo que tenemos que desarrollar es un marco de referencia de un objeto estático, que percibe a Isaac y a sus lágrimas moviéndose a velocidades $v_I$ y $c$ respectivamente, Isaac acercándose al objeto. Notamos que en este caso, las lágrimas pueden viajar en diagonal. Por simplicidad haremos que Isaac avance de manera totalmente perpendicular al objeto, si les interesa que haga el caso diagonal depositenme 3 millones de pesos.

 Lo que buscamos es encontrar las posiciones de las lágrimas respecto a este marco de referencia _quieto_. Así, la posición observada de la lágrima en el objeto quieto, descrita por $(x_o,y_o)(t)$ (al cambiar respecto al tiempo), se describe por:

* $x_o(t) = x'(t) – v_I(x)\cdot t$
* $y_o(t) = y'(t) – v_I(y)\cdot t$

Midamos las posiciones de un par de lágrimas dado en los tiempos $t=0$ y $t=\frac{1}{\nu}$. Sabemos que la diferencia de estas posiciones es un valor constante, $\lambda_o$, _la longitud de onda observada por el objeto_, por lo que tenemos $x_o(\frac{1}{\nu})-x_o(0) = \lambda_o$, y así:

* $\lambda_o= x'(\frac{1}{\nu}) - x'(0) - \frac{v_I(x)}{\nu}$

Donde $x'(\frac{1}{\nu})-x'(0) = \lambda$, por lo que:

* $\lambda_o= \lambda - \frac{v_I(x)}{\nu}$

Como $c = \lambda_o\nu_o$, lo anterior se simplifica a:

$\frac{c}{\nu_o} = \frac{c}{\nu} - \frac{v_I(x)}{\nu}$

De donde al final se obtiene la ecuación 1, el efecto Doppler para cuando Isaac se acerca al objeto, para cuando Isaac se aleja, cambiamos $v_I$ a $-v_I$ y se obtiene una suma en el denominador. Si asumimos que el objeto se mueve con una velocidad $v_{obj}$, esta se la agregamos al denominador, pasando este de $c$ a $c + v_{obj}$, dándonos una versión más general del efecto Doppler, la cual puede que sea más familiar para ustedes. Notemos que, si $v_I = c$, todo se va un poco al carajo. Honestamente no se me ocurre un buen argumento para explicar que eso no va a pasar así que finjamos que Isaac nunca va a ser tan rápido como sus lágrimas. Por favor. Se los suplico.

## Conclusiones

En primer lugar, lo que hicimos fue esencialmente interpretar las lágrimas de Isaac como pedacitos de un medio que ondula. Eso es interesante, porque los físicos hacemos esto todo el tiempo, siempre y cuando tenga sentido. Es más fácil medir trayectorias de cosas puntuales que perturbaciones en medios que pueden ser infinitos. Es más táctil, evita que pierdas el control fácilmente, y, si te dedicas a medir las velocidades de Isaac y de sus lágrimas, puedes darte cuenta que el efecto Doppler logra predecir correctamente las frecuencias observadas en cada uno de los casos expuestos.
Muchos libros de texto y artículos en internet utilizan argumentos ligeramente distintos para obtener las ecuaciones del efecto Doppler. En lo personal, sus argumentos no me gustan y no los explicaré acá. Pero ahora pueden obtener el efecto Doppler usando solamente relatividad Galileana y propiedades de las ondas entonces eso está bien. No solo está bien, sino que en teoría1 puedes usar relatividad de Einstein para obtener el efecto Doppler para velocidades cercanas a la luz. Si quieren que haga eso, depositenme 5 millones de pesos.

¿Recuerdan cuando les dije que no sabía qué pasaba con $v_I = c$? PUES LOS ENGAÑÉ. Lo que pasa es que todas las lágrimas se quedan en un punto, haciendo que la distancia entre ellas sea fundamentalmente 0, por lo que $c = 0$, pero eso no es posible según lo que asumimos, por lo que $\nu_o$ se vuelve indefinida asumiendo que esto pasa. Creo que por descubrir eso merezco por lo menos 7 millones de pesos.