module Main (main) where

import System.IO (hSetEncoding, stderr, stdout, utf8)
import Test.Hspec (describe, hspec)

import Test.Part1(part1Spec)

main :: IO ()
main = do
    -- fix terminal encoding
    hSetEncoding stdout utf8
    hSetEncoding stderr utf8

    hspec $ describe "Tests" $ do
        part1Spec