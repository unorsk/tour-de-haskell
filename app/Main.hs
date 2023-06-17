module Main where

import qualified MyLib (someFunc)

-- WRITE A PARSER :)
main :: IO ()
main = do
  putStrLn "Hello, Haskell!"
  MyLib.someFunc
