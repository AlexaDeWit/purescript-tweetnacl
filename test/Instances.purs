module Test.Instances where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Data.Maybe
import Test.Assert

import Test.Util
import Crypt.NaCl

runInstanceTests :: Effect Unit
runInstanceTests = do
  log "Running typeclass instance tests"
  keyA     <- generateSecretBoxKey
  keyB     <- generateSecretBoxKey
  let differentKeys = keyA == keyB
  let sameKey = keyA == keyA
  assert sameKey
  assert $ not differentKeys
  aliceKp <- generateBoxKeyPair
  bobKp   <- generateBoxKeyPair
  let differentKeyPairs = aliceKp == bobKp
  let sameKeyPair = aliceKp == aliceKp
  assert sameKeyPair
  assert $ not differentKeyPairs

