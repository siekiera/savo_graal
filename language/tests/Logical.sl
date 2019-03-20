toeminto piä() {
  t = 10 == 10; // true
  f = 10 != 10; // false
  tulostappa(left(f) && right(f));
  tulostappa(left(f) && right(t));
  tulostappa(left(t) && right(f));
  tulostappa(left(t) && right(t));
  tulostappa("");
  tulostappa(left(f) || right(f));
  tulostappa(left(f) || right(t));
  tulostappa(left(t) || right(f));
  tulostappa(left(t) || right(t));
}

toeminto left(x) {
  tulostappa("left");
  return x;
}

toeminto right(x) {
  tulostappa("right");
  return x;
}
