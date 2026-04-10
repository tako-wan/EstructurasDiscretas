  module Practica5 where
  import Auxiliar (decimal_binario_aux, rotarUna)
  import Data.Char (toUpper) 
  
{-Función hollerBack.
  Descripción: Toma una cadena en minusculas y la devuelve en mayusculas.
  Uso:
     ##ghci> hollerBack haskell
     ##ghci> HASKELL
-}

  hollerBack :: String -> String
  hollerBack [] = []
  hollerBack (x:xs) = toUpper x : hollerBack xs

{-Función decimal_binario.
  Descripción: Toma un entero en decimal y regresa una lista de enteros en notación binaria.
  Uso:
     ##ghci> decimal_binario 10
     ##ghci> [1, 0, 1, 0] 
-}

  decimal_binario :: Int -> [Int]
  decimal_binario 0 = [0]
  decimal_binario n
    | n > 0 = decimal_binario_aux n
    | otherwise = []

{-Función replica.
  Descripción: Toma un entero x, un entero n y devuelve una lista que consta de n apariciones de x.
  Uso:
     ##ghci> replica 2 5 
     ##ghci> [2, 2, 2, 2, 2]
-}

  replica :: Int -> Int -> [Int]
  replica _ 0 = []
  replica x n = x : replica x (n - 1)

{-Función recuperaElemento.
  Descripción: Toma una lista y devuelve el elemento del indice especificado en la lista.
  Uso:
     ##ghci> [2, 4, 6] 1
     ##ghci> 4
-}

  recuperaElemento :: [a] -> Int -> a
  recuperaElemento (x:_) 0 = x
  recuperaElemento (_:xs) n = recuperaElemento xs (n - 1)

{-Función rota.
  Descripción: Toma una lista y traslada el primer elemento de una lista xs al final.
Se repite esta acción n veces usando la lista resultante en cada paso.
  Uso:
     ##ghci> [1, 2, 3, 4, 5] 2
     ##ghci> [3, 4, 5, 1, 2]
     ##ghci> [1, 2, 3, 4, 5] 13
     ##ghci> [4, 5, 1, 2, 3]
-}

  rota :: [a] -> Int -> [a]
  rota xs 0 = xs
  rota [] _ = []
  rota xs n = rota (rotarUna xs) (n - 1)

{-Función extranio.
  Descripción: Dado un entero positivo regresa una lista de elementos del mismo tipo aplicando el siguiente algoritmo:

            Algoritmo extranio
            Toma como entrada un entero positivo N. Si N es par, el algoritmo lo divide
            sobre dos, y si N es impar, el algoritmo lo multiplica por tres y agrega uno.
            El algoritmo repite esto, hasta que n es uno. Su tarea es simular la ejecución
            del algoritmo para un valor dado de N.

  Uso:
     ##ghci> extranio
     ##ghci> [13 ,40 ,20 ,10 ,5 ,16 ,8 ,4 ,2 ,1]
-}

  extranio :: Int -> [Int]
  extranio 1 = [1]
  extranio n
    | even n = n : extranio (n `div` 2)
    | otherwise = n : extranio (n * 3 + 1)
