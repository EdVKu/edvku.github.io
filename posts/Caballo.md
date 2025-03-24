+++
title = "Movilidad del caballo"
tags = ["blog"]
+++

# Usando la computadora para saber cómo se mueve el caballo en el ajedrez  

Estos días he estado jugando ajedrez como un enfermo y me he percatado que podía dibujar rectángulos moviendo el caballo dos veces. Me dio curiosidad saber cuántos rectángulos distintos puedo hacer moviendo el caballo dos veces así que de esto va a tratar esta entrada.

## El movimiento del caballo

A continuación les presento cómo se mueve un caballo (no busquen cómo se mueve un caballo en google):

~~~
    <img src="/assets/caballo.png" height="300" class="fig1" />
    <p>
<i>El movimiento del caballo.</i>
    </p>

~~~

Verán que el caballo sólo se puede mover 8 casillas a lo más, cada turno. Esto nos permite contabilizar más rápidamente la cantidad de configuraciones que se puede obtener con una cantidad de n movimientos (asumiendo que estos movimientos no reducen su movilidad haciendo que i.e. se vaya a una orilla). Con eso en mente, podemos extraer que se va a mover de $8^2 = 64$ formas posibles con dos movimientos.

## Enlistando los movimientos

64 movimientos son muchos. No me da la gana de enlistar los movimientos a mano, entonces usaré la computadora. A continuación presentaré todos los posibles movimientos: