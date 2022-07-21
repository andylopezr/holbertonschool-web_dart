bool isAlphaNumeric(String s) {
  return s.codeUnits.every((int c) => c >= 'a'.codeUnitAt(0) && c <= 'z'.codeUnitAt(0) || c >= 'A'.codeUnitAt(0) && c <= 'Z'.codeUnitAt(0) || c >= '0'.codeUnitAt(0) && c <= '9'.codeUnitAt(0));
}

bool isPalindrome(String s) {
  var i = 0;
  var j = s.length - 1;
  if (s.length < 3) {
    return false;
  }
  while (i < j) {
    while (i < j && !isAlphaNumeric(s[i])) {
      i++;
    }
    while (i < j && !isAlphaNumeric(s[j])) {
      j--;
    }
    if (s[i].toLowerCase() != s[j].toLowerCase()) {
      return false;
    }
    i++;
    j--;
  }
  return true;
}