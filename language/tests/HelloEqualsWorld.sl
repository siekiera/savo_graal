toeminto doIt(a) {
  tulostappaRivi("Alakuperänen virhemuljaatus:");
  tulostappaRivi(pinomuljaatus());
  
  hello = 123;
  tulostappaRivi("Ykkös kakkos kolomose asettamise jäläkee:");
  tulostappaRivi(pinomuljaatus());
  
  helloEqualsWorld();
  tulostappaRivi("Päeveen ilimottamisen jäläkee:");
  tulostappaRivi(pinomuljaatus());
  
//  readln();
}

toeminto piä() {
  i = 0;
  kuha (i < 10) {
    doIt(i);
    i = i + 1;
  }
}
