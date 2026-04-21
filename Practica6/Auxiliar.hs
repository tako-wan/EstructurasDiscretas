  module Auxiliar (Arbol(..), altura, insertar) where
  data Arbol a = Vacio | AB a (Arbol a) (Arbol a)
    deriving (Eq, Ord, Show)

{-
Funciones Auxiliares.
-}

  --Función altura
  altura :: Arbol a -> Int
  altura Vacio = 0
  altura (AB _ izq der) = 1 + max (altura izq) (altura der)

  --Función insertar
  insertar :: Ord a => a -> Arbol a -> Arbol a
  insertar x Vacio = AB x Vacio Vacio
  insertar x (AB y izq der)
    | x < y = AB y (insertar x izq) der
    | x > y = AB y izq (insertar x der)
    | otherwise = AB y izq der  
