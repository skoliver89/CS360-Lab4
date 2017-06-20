{- Lab 4 Stephen Oliver -}

module Main where
import System.Environment

-- Problem #1
-- Take liters return converted to gallons (lt * 0.26417)
gallons :: (RealFloat a) => a -> a
gallons x = x * 0.26

-- Take CAD return converted to USD (CAD * 0.74)
usd :: (RealFloat a) => a -> a
usd x = x * 0.74

-- You bought 62.3 liters of fuel and paid 78.4 Canadian dollars. 
-- What price was that in US dollars per gallon?
price :: (RealFloat a) => a -> a -> a
price x y = (usd x) / (gallons y)

{- ANSWER: $3.58/gal -}

-- Problem #2
flightDistance :: (RealFloat a) => (a, a) -> (a, a) -> a
flightDistance (x1, y1) (x2, y2) = 3963.0 * acos((cos dx1 * cos dx2 * cos(dy1 - dy2)) + (sin dx1 * sin dx2))
    where (dx1, dy1) = deg2rad (x1, y1)
          (dx2, dy2) = deg2rad (x2, y2)

deg2rad :: (RealFloat a) => (a, a) -> (a, a)
deg2rad (x, y) = ((x*pi)/180, (y*pi)/180)

--3963 * (acos((cos dx1 * cos dx2 * cos(dy1 - dy2)) + (sin dx1 * sin dx2)))
--dotProduct xs z = map (\(x,y) -> (x*z,y)) xs
-- radians = (degrees * pi)/180
{- ANSWER: 2631.8416987553624 nautical miles-}

-- Problem #3
factorial :: (Integral a) => a -> a
factorial x 
    | x >= 0 = foldl (*) 1 [1..x]
    | otherwise = error "Negative Input Detected!"
{- ANSWER: 99! = 933262154439441526816992388562667004907159682643816214685929638952175999932299156089414639761565182862536979208272237582511852109168640000000000000000000000 -}

-- Problem #4
isEven :: (Integral a) => a -> Bool
isEven x = if x `mod` 2 == 0 then True else False

{- ANSWER: N/A -}

-- Problem #5
sumOddCubes :: (Integral a) => a -> a -> a
sumOddCubes x y = sum[xs | xs <- map (^3) [x..y], odd xs]

{- ANSWER: 1874999250000 -}

-- Problem #6
closedForm :: (RealFloat a) => a -> a
closedForm n = (n * (n+1) * (2 * n + 1))/6

sumation :: (RealFloat a) => a -> a
sumation 0 = 0
sumation n = (n^2) + (sumation (n-1))

functionEqTester :: (RealFloat a) => a -> Bool
functionEqTester n = ((closedForm n) == (sumation n))

{- ANSWER: True, they are equivalent -}

-- Problem #7
count :: Eq a => [a] -> a -> Int
count [] x = 0
count ys x = length xs
    where xs = [xs | xs <- ys, xs == x]

count' :: Eq a => [a] -> a -> Int
count' [] x = 0
count' (y:ys) x 
    | x == y = 1 + (count' ys x)
    | otherwise = count' ys x

{- ANSWER: 7 'w's and in [[1,2],[1,2],[1]] there are 2 lists == [1,2] -}

-- Problem #8
maxList :: (Ord a) => [a] -> a
maxList [] = error "max of empty list?! Dummy!"
maxList [x] = x
maxList (x:xs) = max x (maxList xs)

{- ANSWER: N/A -}

-- Problem #9
removeSpaces xs = filter (/= ' ') xs
filterEvens xs = filter even xs
doubleList xs = map (*2) xs
contains55 xs = any (== 55) xs
oddList xs = all odd xs
{- ANSWER: N/A -}

-- Problem #10
isPrime :: Integer -> Bool
isPrime x
    | x > 1 = [1, x] == ([xs | xs <- [1..(x `div` 2)], x `mod` xs == 0] ++ [x])
    | otherwise = False
{- ANSWER: (1000,7919),(1001,7927),(1002,7933),(1003,7937),(1004,7949),(1005,7951),(1006,7963),(1007,7993),(1008,8009),
(1009,8011),(1010,8017),(1011,8039),(1012,8053),(1013,8059),(1014,8069),(1015,8081),(1016,8087),(1017,8089),
(1018,8093),(1019,8101),(1020,8111) *(n, prime)-}

-- Problem #11
factor :: Integer -> [Integer]
factor n = removeDups (factor' n)

-- actually factoring here (factor's helper function)
factor' :: Integer -> [Integer]
factor' n 
    | n == 1 = []
    | otherwise = let x = head $ dropWhile ((/= 0) . mod n) [2..n]
                  in (x :) $ factor $ div n x
-- inspired by code found at: https://wiki.haskell.org/99_questions/Solutions/35

-- get rid of duplacates in a list (used to remove duplacate primes from factor function)
removeDups :: Eq a => [a] -> [a]
removeDups [] = []
removeDups (x:xs)
    | x`elem` xs = removeDups xs
    | otherwise = x : removeDups xs

{- ANSWER: [419] and  [2,5,11,13,23,47,101] -}

-- Problem #12
main :: IO ()
main = do
args <- getArgs
print $ factor (read (head args)::Integer)
{- ANSWER: N/A -}