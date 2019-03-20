# Savolang

An implementation of savolang using Truffle for the GraalVM.

Savolang is a programming language with syntax based on the [Savonian dialects of Finnish language.](https://en.wikipedia.org/wiki/Savonian_dialects)

Implementation forked from SimpleLanguage example.

This repository is licensed under the permissive UPL licence. Fork it to begin
your own Truffle language. [GraalVM website](http://www.graalvm.org/docs/graalvm-as-a-platform/implement-language/)

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
suattasOlla(condition) {
    doSomething();
} vuaEepäOo {
    doOtherThing();
}
```

Kaet condition (executes the block with 66.6% probability)
```
kaet {
    doSomething();
}
```

While loop:
```
kuha(condition) {
    doSomething();
}
```

### Operators

|Operation|Keyword|
|---|---|
|+ |ynnättynä |
|-| vähennettynä|
|*|kerrottuna |
|/|jaettuna |
|<|eeIhaTaiaOlla |
|<=|eeIhaTaeSuattaapiOlla |
|>=|ompiEnemmäTaeEepäOo |
| \> |ompiEnemmä |
|==| justiisa|

### Function declaration

```
toeminto sum(a, b) {
    palaata a ynnättynä b;
}
```

Main function:
```
toeminto piä() {
    tulostappa("Päevee mualima!");
}
```