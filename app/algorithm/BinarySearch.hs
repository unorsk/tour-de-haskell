module Main where

binarySearch :: [Int] -> Int -> Int
binarySearch a n =
  binarySearch' 0 (length a)
  where
  binarySearch' :: Int -> Int -> Int
  binarySearch' low high
   | low >= high = -1
   | otherwise =
       let m = (low + abs (high - low) `div` 2) :: Int
           v = a !! m in
       if v == n
        then m
        else
          if v > n
            then binarySearch' low m
            else binarySearch' (m+1) high

main = print $ binarySearch [1, 2, 3, 4, 5] 2
