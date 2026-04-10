  module Auxiliar (decimal_binario_aux, rotarUna) where

-- Función auxiliar decimal_binario_aux para la función decimal_binario
  decimal_binario_aux :: Int -> [Int]
  decimal_binario_aux 0 = []
  decimal_binario_aux n =
    decimal_binario_aux (n `div` 2) ++ [n `mod` 2] 

-- Función auxiliar para rotar una vez.
  rotarUna :: [a] -> [a]
  rotarUna [] = []
  rotarUna (x:xs) = xs ++ [x]
