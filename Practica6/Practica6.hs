  module Practica6 where
  import Auxiliar (Arbol(..), altura, insertar)
  data Recorrido = InOrden | PreOrden | PostOrden 
  
{-Función nVacios.
  Descripción: Devuelve el total de nodos vacios en un arbol.
  Uso:
     ##ghci> nVacios ((AB 4 (Vacio) (AB 3 Vacio Vacio)))
     ##ghci> 3
-}

  nVacios :: Arbol a -> Int
  nVacios Vacio = 1
  nVacios (AB _ izq der) = nVacios izq + nVacios der

{-Función refleja.
  Descripción: Hace que todos los subarboles izquierdos se vuelvan subarboles derechos y viceversa.
  Uso:
     ##ghci> refleja (AB 4 Vacio (AB 3 Vacio (AB 5 Vacio Vacio)))
     ##ghci> AB 4 (AB 3 (AB 5 Vacio Vacio) Vacio) Vacio
-}

  refleja :: Arbol a -> Arbol a
  refleja Vacio = Vacio
  refleja (AB x izq der) = AB x (refleja der) (refleja izq)

{-Función min.
  Descripción: Devuelva el elemento mínimo de un árbol. 
  Uso:
     ##ghci> minimo (AB 9.0 (AB 4.0 Vacio (AB 5.0 Vacio (AB 6.1 Vacio Vacio))) Vacio)
     ##ghci> 4.0
-}

  minimo :: Ord a => Arbol a -> a
  minimo (AB x Vacio _) = x
  minimo (AB _ izq _) = minimo izq
  minimo Vacio = error "Arbol vacio"

{-Función recorrido.
  Descripción: Devuelve una lista con los elementos de un arbol de acuerdo a alguno de los tres recorridos:
    •InOrden
    •PreOrden
    •PostOrden
  Uso:
     ##ghci> recorrido (AB 4 Vacio (AB 3 Vacio (AB 5 Vacio Vacio))) InOrden
     ##ghci> [4, 3, 5]
     ##ghci> recorrido (AB 4 Vacio (AB 3 Vacio (AB 5 Vacio Vacio))) PosOrden
     ##ghci> [5, 3, 4]
-}
  
  recorrido :: Arbol a -> Recorrido -> [a]
  recorrido Vacio _ = []
  
  recorrido (AB x izq der) InOrden =
    recorrido izq InOrden ++ [x] ++ recorrido der InOrden

  recorrido (AB x izq der) PreOrden =
    [x] ++ recorrido izq PreOrden ++ recorrido der PreOrden

  recorrido (AB x izq der) PostOrden =
    recorrido izq PostOrden ++ recorrido der PostOrden ++ [x]

{-Función esBalanceado.
  Descripción: Verifica si un árbol está balanceado, si lo esta regresa True de lo contrario False.
  Uso:
     ##ghci> esBalanceado (AB 1 (AB 2 Vacio Vacio) (AB 3 Vacio Vacio))
     ##ghci> True
-}

  esBalanceado :: Arbol a -> Bool
  esBalanceado Vacio = True
  esBalanceado (AB _ izq der) =
    abs (altura izq - altura der) <= 1
    && esBalanceado izq
    && esBalanceado der

{-Función listaArbol
  Descripción: Recibe una lista de elementos cualesquiera y regresa un árbol binario de busqueda, no necesariamente balanceado.
  Uso:
     ##ghci> listaArbol [5, 3, 7, 1, 9]
     ##ghci> AB 5 (AB 3 (AB 1 Vacio Vacio) Vacio) (AB 7 Vacio (AB 9 Vacio Vacio))
-}

  listaArbol :: Ord a => [a] -> Arbol a
  listaArbol [] = Vacio
  listaArbol (x:xs) = insertar x (listaArbol xs)
