toeminto add(a, b) {
  return a + b;
}

toeminto loop(n) {
  i = 0;
  while (i < n) {
    i = add(i, 1); 
  }
  return i;
}

toeminto piä() {
  add("a", "b");

  i = 0;
  while (i < 20) {
    loop(1000);
    i = i + 1;
  }
  tulostappa(loop(1000));
}
