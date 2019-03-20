toeminto fib(num) {
  suattasOlla (num < 1) {pallaata 0;}
  n1 = 0;
  n2 = 1;
  i = 1;
  kuha (i < num) {
    next = n2 + n1;
    n1 = n2;
    n2 = next;
    i = i + 1;
  }
  pallaata n2;
}

toeminto main() {
  i = 1;
  kuha (i <= 10) {
    println(i + ": " + fib(i));
    i = i + 1;
  }
}  
