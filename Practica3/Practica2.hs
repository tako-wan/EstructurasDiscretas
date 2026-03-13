  module Practica2 (esPar) where

  import Data.Bits
  
{- Función esPar
   Descripción: Si "n" es par devuelve True de lo contrario False.
   Uso:
      ##ghci> esPar 45
      ##ghci> False
-}
  
  esPar :: Int -> Bool
  esPar n = (n .&. 1) == 0

