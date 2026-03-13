  import Practica2

{- Función creditos
   Descripción: Toma un entero y regresa la materia que tiene esos
respectivos créditos (toma como referencia las materias de primer semestre de la carrera Ciencias de la Computación).
   Uso:
      ##ghci> creditos 12
      ##ghic> [Introduccion a las CC]

      ##ghci> creditos 10
      ##ghci> [Estructuras Discretas, Algebra Superior I]
-}

  creditos :: Int -> [String]
  creditos n
    | n == 4  = ["Ingles I"]
    | n == 10 = ["Estructuras Discretas" , "Algebra Superior I"]
    | n == 12 = ["Introduccion a las CC"]

{-Función soloPares
  Descripción: Recibe una lista de tipo entero, y devuelve una lista únicamente con los números que sean pares de la lista original.
  Uso:
     ##ghci> soloPares [1, 2, 3, 4]
     ##ghci> [2, 4]
-}

  soloPares :: [Int] -> [Int]
  soloPares xs = [y | y <- xs, esPar y]

{-Función negativos 
  Descripción: Cuenta los números negativos de una lista.
  Uso:
     ##ghci> negativos [-1, 2, 4, 8, -4]
     ##ghci> 2
-}

  negativos :: [Int] -> Int
  negativos xs = length [x | x <- xs, x < 0]

{-Función primos
  Descripción: Devuelve los primos de esta lista. [1..20]
  Uso:
     ##ghci> primos [1..20]
     ##ghci> [2, 3, 5, 7, 11,  13, 17, 19]
-}

  esPrimo :: Int -> Bool 
  esPrimo n
    | n < 2 = False 
    | otherwise = null [x | x <- [2 .. n-1], n `mod` x == 0 ]

  primos :: [Int] -> [Int]
  primos xs = [x | x <- xs, esPrimo x]

{-Función coprimos 
  Descripción: Recibe un entero n y devuelve una lista de los coprimos de n.
  Uso:
     ##ghci> coprimos 10 
     ##ghci> [1, 3, 7, 9]
-}

  coprimos :: Int -> [Int]
  coprimos n = [x | x <- [1..n-1], soncoprimos x n]

  soncoprimos :: Int -> Int -> Bool
  soncoprimos a b =
    null [d | d <- [2..min a b], a `mod` d == 0 && b `mod` d == 0]
