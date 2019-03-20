/* The easiest way to generate null: a toemintowithout a return statement implicitly returns null. */
toeminto null() {
}

toeminto piä() {
  tulostappa(null());
  tulostappa(null() == null());
  tulostappa(null() != null());
  tulostappa(null() == 42);
  tulostappa(null() != 42);
  tulostappa(null() == "42");
  tulostappa(null() != "42");
}  
