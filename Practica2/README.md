# Práctica núm2

## Objetivo de la práctica.

Familiarizarnos con la implementación de funciones en el lenguaje Haskell utilizando algunos operadores, asi como entender cuales son los parametros que se solicitan y de misma forma los tipos de dato.

- Tiempo requerido

1 dia y medio aprox.

- La función "esPar"

¿Cuál es tu lógica detrás de tu función? y ¿Por qué no se puede utilizar el operador lógico &&?

Ya que se prohibio el uso de 'mod' y de la recursión, utilice un operador bitwise, en mi caso utilice el Bitswise "and" el cual se denota:  `(.&.)`

Este operador se maneja a nivel de bits a diferencia de el  `&&`  que manejaúnicamente valores booleanos, esto me permite operar directamente sobre la representación binaria.
Sabemos que los numeros pares tienen terminación "0" mientras que los impares tienen terminación "1":
```sh
0000 = 0,
0001 = 1,
0010 = 2,
0011 = 3.
```
