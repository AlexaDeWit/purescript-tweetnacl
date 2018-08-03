module Test.Sign where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Data.Maybe
import Test.Assert

import Test.Util
import Crypt.NaCl

-- | seed is a Uint8Array filled with 0s
foreign import testSeedData :: { seed :: SignSeed, secretKey :: SignSecretKey, publicKey :: SignPublicKey }

runSignTests :: Effect Unit
runSignTests = do
  log "Running Signing tests"
  signKpA  <- generateSignKeyPair
  signKpB  <- generateSignKeyPair
  nonce    <- generateNonce
  badNonce <- generateNonce
  let secKeyA  = getSignSecretKey signKpA
  let pubKeyA  = getSignPublicKey signKpA
  let pubKeyB  = getSignPublicKey signKpB
  let signKpA2 = getSignKeyPair secKeyA
  let str      = "Test message 123 haha"
  let msg      = fromString str

  -- Check that we get the same key
  assert $ cmpSignKp signKpA signKpA2
  assert $ false == (cmpSignKp signKpA signKpB)

  -- A signs a message
  let signedMsg = sign msg secKeyA
  -- Try to open with keyB should fail
  let openMsgFail = signOpen signedMsg pubKeyB
  assert $ isNothing openMsgFail
  -- Try to open with correct key should succed
  let openMsgSuccess = signOpen signedMsg pubKeyA
  assert $ cmpMsg str openMsgSuccess

  -- Sign a message Detached
  let sigA = signDetached msg secKeyA
  -- Try to verify with wrong key
  let verified = verifyDetached msg sigA
  assert verified
  
  -- Test seed -> secret key
  let keyPairS = getSignKeyPairFromSeed testSeedData.seed
  let skMatch = getSignSecretKey keyPairS == testSeedData.secretKey
  let pkMatch = getSignPublicKey keyPairS == testSeedData.publicKey
  assert $ skMatch && pkMatch
  
