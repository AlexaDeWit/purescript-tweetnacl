module Test.Main where

import Prelude
import Effect (Effect)
import Test.Box (runBoxTests)
import Test.SecretBox (runSecretBoxTests)
import Test.Sign (runSignTests)
import Test.Instances (runInstanceTests)

main :: Effect Unit
main = do
  runSignTests
  runBoxTests
  runSecretBoxTests
  runInstanceTests
