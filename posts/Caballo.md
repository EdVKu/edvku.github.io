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

```python
movscaballo = []
def caballo(i,j):
    a = [1,-1,2,-2]
    b = [2,-2,1,-1]
    return [a[i],b[j]]

for i in range(4):
    for j in range(2):
        if i<2:
            movscaballo.append(caballo(i,j))
        else:
            movscaballo.append(caballo(i,j+2))
print(movscaballo)
```

El cual te brinda el siguiente arreglo:

```
[[1, 2], [1, -2], [-1, 2], [-1, -2], [2, 1], [2, -1], [-2, 1], [-2, -1]]
```

Ahora que vimos que funciona correctamente nuestro código para el primer movimiento, falta sumar el anterior arreglo consigo mismo para obtener los 64 posibles movimientos y empezar a ver qué figuras forman.

# Hacer eso que acabo de decir

Acá el código para quien le interese:

```python
import numpy as np
movscaballo = np.array(movscaballo)
caballo2 = []
for i in movscaballo:
    for j in movscaballo:
        caballo2.append(i+j)

```

Dandonos el siguiente arreglo (se ve más feo originalmente porque tuve que usar numpy para que se interprete el operador + como suma de vectores):

```
[[2, 4], [2, 0], [0, 4], [0, 0], [3, 3], [3, 1], [-1,  3], [-1,  1], [2, 0], [ 2, -4], [0, 0], [ 0, -4], [ 3, -1], [ 3, -3], [-1, -1], [-1, -3], [0, 4], [0, 0], [-2,  4], [-2,  0], [1, 3], [1, 1], [-3,  3], [-3,  1], [0, 0], [ 0, -4], [-2,  0], [-2, -4], [ 1, -1], [ 1, -3], [-3, -1], [-3, -3], [3, 3], [ 3, -1], [1, 3], [ 1, -1], [4, 2], [4, 0], [0, 2], [0, 0], [3, 1], [ 3, -3], [1, 1], [ 1, -3], [4, 0], [ 4, -2], [0, 0], [ 0, -2], [-1,  3], [-1, -1], [-3,  3], [-3, -1], [0, 2], [0, 0], [-4,  2], [-4,  0], [-1,  1], [-1, -3], [-3,  1], [-3, -3], [0, 0], [ 0, -2], [-4,  0], [-4, -2]]
```

Nos percatamos que hay muchos valores repetidos! Esto es de esperarse, ya que, por ejemplo, hay 8 configuraciones que esencialmente no le hacen nada al movimiento del caballo. 

Quitamos las repeticiones rápidamente y nos quedamos con una lista con 33 elementos. Casi la mitad de los elementos originales. estos son:

```
[[2, 4], [2, 0], [0, 4], [0, 0], [3, 3], [3, 1], [-1, 3], [-1, 1], [2, -4], [0, -4], [3, -1], [3, -3], [-1, -1], [-1, -3], [-2, 4], [-2, 0], [1, 3], [1, 1], [-3, 3], [-3, 1], [-2, -4], [1, -1], [1, -3], [-3, -1], [-3, -3], [4, 2], [4, 0], [0, 2], [4, -2], [0, -2], [-4, 2], [-4, 0], [-4, -2]]
```

De aquí cuántos rectángulos únicos podemos extraer? Pues para saberlo sólo tenemos que obtener las áreas que forman cada *trayectoria*. Podemos ver que serán menos, ya de un vistazo. Exactamente van a ser 6 áreas únicas, por lo que de todas las 64 (luego 33) posibles formas de mover un caballo dos veces, vamos a poder extraer 6 rectángulos distinguibles entre sí. 

Esto nos dice que las otras 27 configuraciones van a brindar versiones rotadas, volteadas, etc de estos 6 rectángulos.

Gracias por leerme.