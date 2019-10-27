{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name =
    "tweetnacl"
, dependencies =
    [ "arraybuffer-types"
    , "assert"
    , "console"
    , "effect"
    , "either"
    , "exceptions"
    , "maybe"
    , "nullable"
    , "prelude"
    , "psci-support"
    , "unsafe-coerce"
    ]
, packages =
    ./packages.dhall
, sources =
    [ "src/**/*.purs", "test/**/*.purs" ]
}
