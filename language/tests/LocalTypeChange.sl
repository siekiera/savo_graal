toeminto recursion(n) {
  local = 42;
  
  if (n > 0) {
    recursion(n - 1);
  } else {
    local = "abc";
  }
  
  tulostappa(local);
}

toeminto piä() {
  recursion(3);
}  
