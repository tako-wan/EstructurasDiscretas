  import Data.Bits

{- Función sayHello
   Descripción: Función que recibe una cadena de texto y la devuelve con la concatenación Hello ___ !.
   Uso:
      ##ghci> sayHello "Haskell"
      ##ghci> Hello Haskell!
-}

  sayHello :: String -> String   
  sayHello texto = "Hello " ++ texto ++ "!"

{- Función calcularPropina
   Descripción: Calcula la propina a partir de una cuenta que por defecto se deja el 10 o 15%.
   Uso:
      ##ghci> calcularPropina 1000
      ##ghci> 100
-}

  calcularPropina :: Float -> Float
  calcularPropina calcula = calcula * 0.10

{- Función menor 
   Descripción: Función que recibe 3 números y devuelve el menor de ellos.
   Uso:
      ##ghci> menor (123, 4, 56)
      ##ghci> 4
-}

  menor :: Int -> Int -> Int -> Int
  menor x y z = if x <= y && x <= z
    then x
         else if y <= x && y <= z
                 then y
                      else z

{- Función decide
   Descripción: Función que recibe un booleano y dos cadenas. Si el valor booleano es True, devuelve la primera cadena, de lo contrario devuelve la segunda.
   Uso:
      ##ghci> decide True "primera" "segunda"
      ##ghci> primera
      ##ghci> decide False "hola" "haskell"
      ##ghci> haskell
-}

  decide :: Bool -> String -> String -> String
  decide cadena s1 s2 = if cadena then s1 else s2

{- Función esDescendiente
   Descripción: Recibe cuatro parámetros de tipo entero (x), (y), (z) y (w). La función debe devolver un valor de tipo booleano de acuerdo a los siguientes casos:
        • True, si los números fueron ingresados de manera descendente.
        • False, si los números no fueron ingresados de manera descendente. 
   Uso:
      ##ghci> esDescendiente 10 9 8 7
      ##ghci> True 
-}

  esDescendiente :: Int -> Int -> Int -> Int -> Bool
  esDescendiente x y z w = x > y && y > z && z > w

{- Función esDivisible
   Descripción: Debe recibir dos parámetros de tipo entero, es decir (x), (y) y devolver una salida del estilo "x" es divisible por "y".
Recordemos que no se puede dividir entre 0. 
   Uso:
      ##ghci> esDivisible 4 2
      ##ghci> 4 es divisible por 2
-}

  esDivisible :: Int -> Int -> String
  esDivisible x y = if y == 0
    then "no se puede dividir por 0"
                    else if x `mod` y == 0
                         then show x ++ " es divisible por " ++ show y
                              else show x ++ " no es divisible por " ++ show y 

{- Función esPar
   Descripción: Si "n" es par devuelve True de lo contrario False.
   Uso:
      ##ghci> esPar 45
      ##ghci> False
-}
  
  esPar :: Int -> Bool
  esPar n = (n .&. 1) == 0
  
{- Función hipotenusa
   Descripción: recibe dos parámetros de tipo float "b" y "h"(b = base, h = altura). La función devuelve un valor de tipo float que represente el valor de la hipotenusa.
La hipotenusa se calcula respecto a la base y altura del triángulo rectángulo (hipotenusa = √(b^2)+(h^2))
   Uso:  
      ##ghci> hipotenusa 9.0 12.0
      ##ghci> 15.0
-}

  hipotenusa :: Float -> Float -> Float
  hipotenusa b h = sqrt (b^2 + h^2)   

{-Función pendiente 
  Descripción: Está función debe recibir dos parámetros que serán tuplas de dos elementos de tipo float respectivamente, es decir (x1, y1) y (x2, y2). pendiente debe devolver un valor de tipo float que represente la pendiente de la recta que pasa por dos puntos.
Una tupla en Haskell se declara como:

         (tipo1, tipo2, tipo3, tipo(n)) 

donde tipo1 a tipo(n) son tipo existentes en Haskell

         pendiente = y2 - y1
                   -----------
                     x2 - x1
  Uso:
     ##ghci> pendiente (3.0, 2.0) (7.0, 8.0)
     ##ghci> 1.5
-}

  pendiente :: (Float, Float) -> (Float, Float) -> Float
  pendiente (x1, y1) (x2, y2) = (y2 - y1) / (x2 - x1)

{-Función distanciaPuntos 
  Descripción: Recibe dos parámetros que serán tuplas de dos elementos de tipo float respectivamente, es decir (x1, y1) y (x2, y2). La función debe devolver un valor de tipo float que represente la distancia entre los puntos (x1, y1) y (x2, y2).
Recordatorio: La distancia entre dos puntos está definida como:

         distancia = √(x2 - x1)^2 + (y2 - y1)^2

  Uso:
     ##ghci> distanciaPuntos (2.0, 1.0) (5.0, 5.0)
     ##ghci> 5.0
-}

  distanciaPuntos :: (Float, Float) -> (Float, Float) -> Float
  distanciaPuntos (x1, y1) (x2, y2) = sqrt ((x2 - x1)^2 + (y2 - y1)^2)

{-Función cuadrados 
  Descripción: Implementa la función cuadrados que debe recibir como parámetro una tupla de tipo entera y devolver una tupla de los cuadrados del parámetro.
  Uso:
     ##ghci> cuadrados [1..5]
     ##ghci> [1, 4, 9, 16, 25]
-}

  cuadrados :: [Int] -> [Int]
  cuadrados list = [x^2 | x <- list]
