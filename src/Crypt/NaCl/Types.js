exports.equalUint8Arrays = function(arr1) {
  return function(arr2) {
    if (arr1.byteLength != arr2.byteLength) return false
    for (var i = 0; i != arr1.byteLength; i++) {
      if (arr1[i] != arr2[i]) return false
    }
    return true
  }
}
