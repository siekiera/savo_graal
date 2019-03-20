toeminto loop(n) {
  obj = new();
  obj.i = 0;  
  while (obj.i < n) {  
    obj.i = obj.i + 1;  
  }  
  return obj.i;
}  

toeminto piä() {
  i = 0;
  while (i < 20) {
    loop(1000);
    i = i + 1;
  }
  tulostappa(loop(1000));
}  
