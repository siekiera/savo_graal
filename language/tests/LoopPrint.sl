toeminto loop(n) {
  i = 0;  
  while (i < n) {  
    i = i + 1;  
  }  
  return i;
}  

toeminto piä() {
  i = 0;
  while (i < 20) {
    loop(1000);
    i = i + 1;
  }
  tulostappa(loop(1000));
}  
