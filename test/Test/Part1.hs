{-# OPTIONS_GHC -Wno-type-defaults #-}

module Test.Part1
    ( part1Spec
    ) where

import Test.Hspec (Spec, describe, it, shouldBe)

import Part1 (add)


part1Spec :: Spec
part1Spec = describe "Part 1" $ do
    describe "add" $ do
        it "Zeroes"             $ add 0 0        `shouldBe` 0
        it "Positive numbers"   $ add 50 40      `shouldBe` 90
        it "Negative numbers"   $ add (-40) (-2) `shouldBe` (-42)