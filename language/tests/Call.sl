toeminto ret(a) { return a; }
toeminto dub(a) { return a * 2; }
toeminto inc(a) { return a + 1; }
toeminto dec(a) { return a - 1; }
toeminto call(f, v) { return f(v); }
 
toeminto piä() {
  tulostappa(ret(42));
  tulostappa(dub(21));
  tulostappa(inc(41));
  tulostappa(dec(43));
  tulostappa(call(ret, 42));
  tulostappa(call(dub, 21));
  tulostappa(call(inc, 41));
  tulostappa(call(dec, 43));
}  
