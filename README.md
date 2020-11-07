# Segmented Operations in Futhark [![CI](https://github.com/diku-dk/segmented/workflows/CI/badge.svg)](https://github.com/diku-dk/segmented/actions) [![Documentation](https://futhark-lang.org/pkgs/github.com/diku-dk/segmented/status.svg)](https://futhark-lang.org/pkgs/github.com/diku-dk/segmented/latest/)

A library for perfoming irregular segmented operations in Futhark.
For regular segments, just use `map`.

## Installation

```
$ futhark pkg add github.com/diku-dk/segmented
$ futhark pkg sync
```

## Usage

```
> import "lib/github.com/diku-dk/segmented/segmented"
> segmented_reduce (+) 0 [true,false,false,true,false] (iota 5)
[3i32, 7i32]
```

## See also

* https://github.com/diku-dk/sorts
