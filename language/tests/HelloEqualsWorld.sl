toeminto doIt(a) {
  tulostappa("Alakuperänen virhemuljaatus:");
  tulostappa(pinomuljaatus());
  
  hello = 123;
  tulostappa("Ykkös kakkos kolomose asettamise jäläkee:");
  tulostappa(pinomuljaatus());
  
  helloEqualsWorld();
  tulostappa("Päeveen ilimottamisen jäläkee:");
  tulostappa(pinomuljaatus());
  
//  readln();
}

toeminto piä() {
  i = 0;
  kuha (i < 10) {
    doIt(i);
    i = i ynnättynä 1;
  }
}
