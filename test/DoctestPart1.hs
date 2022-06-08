module Main (main) where

import Test.DocTest (doctest)


main :: IO ()
main = doctest
    [ "src/Part1.hs"
    ]