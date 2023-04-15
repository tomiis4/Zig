# <a href="https://ziglang.org">Zig</a> Cheatsheet <img width="50em" src="https://avatars.githubusercontent.com/u/27973237?s=160&v=4">

<table>
<td>

* [File](#file)
* [Hello world](#hello-world)
* [Importing packages](#importing-packages)
* [Variables & Types](#variables)
	* [structs](#structs)
	* [map](#map)
* [Functions](#functions)
* [Logic statements](#logic-statements)
	* [if/else](#ifelse)
	* [switch/case](#switchcase)

</td>
<td>

* [Loop](#loop)
	* [for-i](#for-i)
	* [for-in](#for-in)
	* [while](#while)
* [Converting](#converting)
* [Build-in iunctions](#build-in-functions)
	* [func](#func)

</td>
<td>

* [Pointers](#pointers)
* [Unit testing](#unit-testing)
* [External file](#external-file)

</td>
<td>

* [Remote packages](#remote-packages)
* [Packages](#packages)
	* [pkg](#pkg)
* [Project ideas](#project-ideas)
</td>
</table>


## File

### Run file
`zig run file.zig`

### Generate exe file
`zig build-exe file.zig`

## Hello world
```zig
// import print fromm std
const print = @import("std").debug.print;

// create main function
pub fn main() void {
    // print
    print("Hello, world!\n", .{});
}
```


## Importing packages
```zig
const <package> = @import("<package-name>");
```


## Variables
```zig
// automatic type
foo := "String"
slice := []<type>{}

// constants
const var <type> = <value>

// set own type
var <name> <type> = <value>
var slice = []<type>{}

// arrays
array := [...]<type>{} // fixed size
array := [][]<type>{} // 2D array

// maps (similar to objects/json in JavaScript)
maps := map[<key-type>]<value-type>{}

/*
Type: 
	bool              = %t = true, false
	int8, 16, 32, 64  = %d = number in range of x bits, can be negative
	uint8, 16, 32, 64 = %d = number in range of x bits, can't be negative
	float32, 64       = %g = decimal numbers
	string            = %s = string
*/
```

### Structs
```zig
```

### Map
```zig

```


## Functions
```zig
func name() {
	//...
}

// return
func name() <type> { return x }
func name() (<type>, <type>) { return x, y }

// parameters 
func name(param1 <type>) {  }
func name(param1, param2 <type>) {  } // if param1 have same type as param2
```


## Logic Statements

### If/else
```zig

```

### Switch/case
```zig

```


## Loop

### For-I
```zig

```

### For-In
```zig
```

### While
```zig

```


## Converting
```zig

```


## Build-In Functions

### func
```zig
```

## Pointers
```zig

```


## Unit Testing
```sh
```
```zig
// main.zig
// main_test.zig
```


## External file
```zig
// folder structure
|- main.zig
|
|- example
  |- second.zig

// main.zig


// second.zig

```



## Remote packages

### Install packages
```

```

### Import packages
```zig
```


## Packages

### pkg

```zig
// code
```


## Project ideas
* [name](link)