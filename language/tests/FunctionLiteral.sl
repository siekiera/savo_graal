toeminto add(a, b) {
  return a + b;
}

toeminto sub(a, b) {
  return a - b;
}

toeminto foo(f) {
  tulostappa(f(40, 2));
}

toeminto piä() {
  foo(add);
  foo(sub);
}  
