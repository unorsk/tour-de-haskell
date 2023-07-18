{-# LANGUAGE LinearTypes #-}

module Linear (thisWorks) where

linearSwap ∷ (a, a) ⊸ (a, a)
linearSwap (x, y) = (y, x)

l = linearSwap

thisWorks x = fst (l x) <> fst (l x)

-- thisFails x = l $ l x