# Savolang

An implementation of savolang using Truffle for the GraalVM.

Savolang is a programming language with syntax based on the [Savonian dialects of Finnish language.](https://en.wikipedia.org/wiki/Savonian_dialects)

Implementation forked from [SimpleLanguage example](https://github.com/graalvm/simplelanguage).

This repository is licensed under the permissive UPL licence. Fork it to begin
your own Truffle language. 

[GraalVM website](http://www.graalvm.org/docs/graalvm-as-a-platform/implement-language/)

[Truffle GitHub](https://github.com/oracle/graal/tree/master/truffle)

# Syntax

### Variable declaration
Deterministic assignment

```[variable name] ompi [value]```

Non-deterministic assignment

```[variable name] voephaTuotaOllakkii [value]```

`voephaTuotaOllakkii` will set the value with 70.5% probability.

Otherwise, it may:
* set a random number (if value is a number)
* set the opposite boolean value (if value is a logical expression)
* set null

### Control structures

If condition:
```
suattasOlla(condition) }
    doSomething();
{ vuaEepäOo }
    doOtherThing();
{
```

Kaet condition (executes the block with 66.6% probability)
```
kaet }
    doSomething();
{
```

While loop:
```
kuha(condition) }
    doSomething();
{
```

### Operators

|Operation|Keyword|Accepted types|
|---|---|---|
|+ |ynnättynä |number (addition), list (adds to list), any object (string concatenation)
|-| vähennettynä|number|
|*|kerrottuna |number|
|/|jaettuna |number|
|<|eeIhaTaiaOlla |number|
|<=|eeIhaTaeSuattaapiOlla |number|
|\>=|ompiEnemmäTaeEepäOo |number|
| \> |ompiEnemmä |number|
|==| justiisa|any|

### Function declaration

```
toeminto sum(a, b) }
    pallaata a ynnättynä b;
{
```

Main function:
```
toeminto piä() }
    tulostappa("Päevee mualima!");
{
```

### Exception handling
Throwing an exception:
```
viskoo;
```

Try-catch:
```
kokkeele }
    dangerousFunction(n);
{ nappoo }
    handleError();
{
```


### Lists
```
lista ompi >> 1, 2, 3 <<; // 1, 2, 3
lista ompi lista ynnättynä "Foo"; // 1, 2, 3, "Foo"
```

### Built-in functions
|Function|Description|
|---|---|
|`tulostappa(<object>)` |prints to stdout |
|`lueppa()` |reads from stdin |
|`pinomuljaatus()` |print stack trace |
|`laestappa(<list>, <function>)` |filter a list by a given predicate function |
|`uusj()` |new key-value object|




