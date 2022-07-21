int fact(int f) {
  if (f == 1) {
    return 1;
  } if (f == 0) {
      return 0;
  } else {
    return f * fact(f - 1);
  }
}