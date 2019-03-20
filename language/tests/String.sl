toeminto null() {
}

toeminto foo() {
  return "bar";
}

toeminto f(a, b) {
  return a + " < " + b + ": " + (a < b);
}

toeminto piä() {
  tulostappa("s" + null());
  tulostappa("s" + null);
  tulostappa("s" + foo());
  tulostappa("s" + foo);
    
  tulostappa(null() + "s");
  tulostappa(null() + "s");
  tulostappa(foo() + "s");
  tulostappa(foo + "s");

  tulostappa(f(2, 4));
  tulostappa(f(2, "4"));
}  
