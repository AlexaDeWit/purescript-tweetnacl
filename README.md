# purescript-tweetnacl
[![Pursuit](https://pursuit.purescript.org/packages/purescript-tweetnacl/badge)](https://pursuit.purescript.org/packages/purescript-tweetnacl)
[![Build Status](https://travis-ci.org/AlexaDeWit/purescript-tweetnacl.svg?branch=master)](https://travis-ci.org/AlexaDeWit/purescript-tweetnacl)

This module wraps [tweetnacl](https://github.com/dchest/tweetnacl-js), which is
a javascript re-implementation of the original
[TweetNaCl](http://tweetnacl.cr.yp.to).

# Important Note

Because this library relies on a foreign js import (tweetnacl-js), your build chain will need to use something like webpack or browserify to bring in the required files if running the program in a browser.

See: https://github.com/purescript/documentation/blob/master/guides/PureScript-Without-Node.md#bundling-javascript-for-the-browser


# Attribution

This module was originally released by William Wolf, [here](https://github.com/throughnothing/purescript-crypt-nacl)

Owing to inactivity on the part of the original author, this forked release has been created to carry support to 0.12, as well as beyond. This repository will be maintained as if it was the primary one, at least until such time as upstream pulls in the work done here and becomes active once again.
