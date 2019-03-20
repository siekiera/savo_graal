toeminto foo() {
  tulostappa(test(40, 2));
}

toeminto piä() {
  miäritteleToeminto("toemintotest(a, b) { return a + b; }");
  foo();

  miäritteleToeminto("toemintotest(a, b) { return a - b; }");
  foo();
}  
