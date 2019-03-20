toeminto add(a, b) {
  pallaata a + b;
}

toeminto loop(n) {
  i = 0;  
  sum = 0;  
  kuha (i <= n) {
    sum = add(sum, i);  
    i = add(i, 1);  
  }  
  pallaata sum;
}  

toeminto main() {
  i = 0;
  kuha (i < 20) {
    loop(10000);
    i = i + 1;
  }
  tulostappa(loop(10000));
}  
