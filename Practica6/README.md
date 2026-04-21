# Práctica num6

## Objetivo de la práctica.

Entender un poco como es que funcionan las estructuras de los árboles y para que pueden llegar a resultarnos útiles.

- Tiempo requerido

   ---2 días---

## REPRESENTACIÓN DE ÁRBOLES BINARIOS

a. AB 4 Vacio (AB 3 Vacio (AB 5 Vacio Vacio))

``` mermaid
    graph TB
    A[4] --> B[Vacio]
    A --> C[3]
    C --> D[Vacio]
    C --> E[5]
```
b. AB 3 (AB 7 (AB 12 Vacio Vacio) Vacio) (AB 6 (AB 11 Vacio Vacio) (AB 10 Vacio Vacio))

``` mermaid
    graph TB
    A[3] --> B[7]
    A --> C[6]
    B --> D[12]
    C --> E[11]
    C --> F[10]
```

c. AB 8 (AB 6 (AB 1 Vacio (AB 4 (AB 2 Vacio Vacio) Vacio)) (AB 7 Vacio Vacio)) (AB 15 Vacio Vacio)

``` mermaid
    graph TB
    A[8] --> B[6]
    A --> C[15]
    B --> D[1]
    B --> E[7]
    D --> F[Vacio]
    D --> G[4]
    G --> H[2]
```

## Actividades

- De acuerdo al ejemplo de la función foldl o foldr el árbol resultante es un BST balanceado?

-----------

- De manera conceptual. ¿Cuál seria la idea para que foldr o foldl nos ayude a insertar BST balanceados?

----------------

- ¿Cúales son las ventajas que tienen las funciones foldl sobre foldr?

Principalmente es su mayor eficiencia de memoria al procesar listas largas y finitas, `foldl` procesa los elementos de izquierda a derecha y actualiza el acumulador inmediatamente. Esto evita algo que se conoce como stack overflow lo que lo hace en la mejor opción para operaciones de reducción como sumas o conteos.

- ¿Cúales son las ventajas que tienen las funciones foldr sobre foldl?

`foldr`asocia la función de plegado desde la derecha, debido a su naturaleza perezosa puede procesar listas infinitas y es ideal para transformar una lista en otra contruyendo la nueva lista elemento por elemento de derecha a izquierda sin necesidad de evaluar toda la lista de entrada primero, en resumen permite que los cálculos se evalúen solo cuando sea necesario.