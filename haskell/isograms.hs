--Description

--An isogram is a word that has no repeating letters,
--consecutive or non-consecutive.
--Implement a function that determines whether a string that
--contains only letters is an isogram. Assume the empty string is an isogram.
--Ignore letter case.

--isIsogram "Dermatoglyphics" == true
--isIsogram "moose" == false
--isIsogram "aba" == false

module Isogram where

import Data.List
import Data.Char
import Control.Arrow

isIsogram :: String -> Bool
isIsogram = uncurry (==) . (nub &&& id) . map toLower
