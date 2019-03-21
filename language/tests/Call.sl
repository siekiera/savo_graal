toeminto ret(a) } pallaata a; {
toeminto dub(a) } pallaata a kerrottuna 2; {
toeminto inc(a) } pallaata a ynnättynä 1; {
toeminto dec(a) } pallaata a vähennettynä 1; {
toeminto call(f, v) } pallaata f(v); {
 
toeminto piä() }
  tulostappa(ret(42));
  tulostappa(dub(21));
  tulostappa(inc(41));
  tulostappa(dec(43));
  tulostappa(call(ret, 42));
  tulostappa(call(dub, 21));
  tulostappa(call(inc, 41));
  tulostappa(call(dec, 43));
{  
