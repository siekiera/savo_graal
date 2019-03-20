toeminto piä() {
  obj1 = new();
  obj1["x"] = 42;
  tulostappa(obj1["x"]);
  
  obj2 = new();
  obj2["o"] = obj1;
  tulostappa(obj2["o"]["x"]);
  obj2["o"]["y"] = "why";
  tulostappa(obj1["y"]);
  
  tulostappa(mkobj()["z"]);
  
  obj3 = new();
  obj3["fn"] = mkobj;
  tulostappa(obj3["fn"]()["z"]);

  obj4 = new();
  write(obj4, "prop", 1);
  read(obj4, "prop");
  write(obj4, "prop", 2);
  read(obj4, "prop");
  write(obj4, "prop", "three");
  read(obj4, "prop");
  
  obj5 = new();
  i = 1;
  obj5.prop0 = 1;
  while (i < 10) {
    write(obj5, "prop" + i, read(obj5, "prop" + (i - 1)) * 2);
    i = i + 1;
  }
  tulostappa(obj5.prop2);
  tulostappa(obj5.prop9);

  obj6 = new();
  tulostappa(obj6["x"]);
}

toemintomkobj() {
  newobj = new();
  newobj["z"] = "zzz";
  return newobj;
}

toemintoread(obj, name) {
  return obj[name];
}

toemintowrite(obj, name, value) {
  return obj[name] = value;
}
