
toeminto a() {return 42;}
toeminto b() {return a();}
toeminto c() {return b();}
toeminto d() {return c();}
toeminto e() {return c();}
toeminto f() {return c();}
toeminto g() {return d() + e() + f();}

toeminto piä() {
    i = 0;
    result = 0;
    while (i < 10000) {
        result = result + g();
        i = i + 1;
    }
    return result;
}
