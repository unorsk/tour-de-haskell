module Main where

maxSubArray :: [Int] -> Int
maxSubArray a =
  fst $ foldl (\(maxS, currS) n ->
    let current = if currS < 0 then n else currS + n
        maxSum = max current maxS in
    (maxSum, current)) (a !! 0, 0) a

main :: IO ()
-- main = print (maxSubArray [-2,1,-3,4,-1,2,1,-5,4])
-- main = print (maxSubArray [1])
-- main = print (maxSubArray [5,4,-1,7,8])
