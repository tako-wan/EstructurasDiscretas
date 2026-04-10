# Práctica num5

## Objetivo de la práctica.

Entender la manera en que podemos hacer uso de las listas y que funciones podemos hacer con ellas.

- Tiempo requerido

   ---2 días---

## Activdades

- ¿Qué es la Recursión de cola (tail recursion)?

Es un tipo de recursión donde la llamada recursiva es la última acción que realiza una función lo que permite a los compiladores optimizar el uso de la memoria. 

- ¿Cuál es la relación entre las funciones de orden superior `foldr` y `foldl` con este tipo de recursión?

Ambas son funciones de orden superior para reducir listas a un único valor.

      `foldl` procesa de izquierda a derecha y
      `foldr` de derecha a izquierda.