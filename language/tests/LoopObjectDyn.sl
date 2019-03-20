toeminto loop(n, obj, name) {
  obj[name] = 0;  
  while (obj[name] < n) {  
    obj[name] = obj[name] + 1;  
  }  
  return obj[name];
}  

toeminto piä() {
  i = 0;
  while (i < 20) {
    loop(1000, new(), "prop");
    i = i + 1;
  }
  tulostappa(loop(1000, new(), "prop"));
}  
