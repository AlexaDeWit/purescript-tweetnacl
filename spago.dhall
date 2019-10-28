{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name =
    "tweetnacl"
, dependencies =
    [ "arraybuffer"
    , "arraybuffer-types"
    , "assert"
    , "console"
    , "effect"
    , "either"
    , "exceptions"
    , "maybe"
    , "nullable"
    , "prelude"
    , "psci-support"
    , "text-encoding"
    , "unsafe-coerce"
    ]
, packages =
    ./packages.dhall
, sources =
    [ "src/**/*.purs", "test/**/*.purs" ]
}
