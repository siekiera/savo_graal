toeminto piä() {
  obj1 ompi uusj();
  obj1.x ompi 42;
  tulostappa(obj1.x);
  
  obj2 ompi uusj();
  obj2.o ompi obj1;
  tulostappa(obj2.o.x);
  obj2.o.y ompi "why";
  tulostappa(obj1.y);
  
  tulostappa(mkobj().z);
  
  obj3 ompi uusj();
  obj3.fn ompi mkobj;
  tulostappa(obj3.fn().z);

  obj4 ompi uusj();
  write(obj4, 1);
  read(obj4);
  write(obj4, 2);
  read(obj4);
  write(obj4, "three");
  read(obj4);

  obj5 ompi uusj();
  tulostappa(obj5.x);
}

toeminto mkobj() {
  newobj ompi uusj();
  newobj.z ompi "zzz";
  pallaata newobj;
}

toeminto read(obj) {
  pallaata obj.prop;
}

toeminto write(obj, value) {
  pallaata obj.prop ompi value;
}
