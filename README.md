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
// mutable
var <variable-name>: type = <value>;
var <variable-name>: type; // empty

// immutable
const <variable-name>: type = <value>;

// arrays
var arr: [<length>]<type> = [<value>, ...];
var arr: [<length>]<type>; // empty

/*
Type: 
	bool                     = %b   = true, false
	u8, u16, u32, u64, u128  = %d   = number in range of x bits, can't be negative
	i8, i16, i32, i64, i128  = %d   = number in range of x bits, can be negative
	f16, f32, f64            = %f   = decimal numbers
	[] u8               = %.*s = string
*/
```

### Structs
```zig
// create struct
const <Struct-name> = struct {
    <key1>: <type>,
    <key2>: <type>,
};

// use struct
const <struct-x> = {
    <key1>: <value>,
    <key2>: <value>,
};
```

### Map
```zig
const HashMap = @import("std").HashMap;

// create map
var <map-name> = HashMap(<type>).init(<length>);

// add item
<map-name>.put(<key>, <value>);

// read item
const <value> = <map-name>.get(<key>);
```


## Functions
```zig
// normal function for one file
fn name() void {
	//...
}

// public function
pub fn name() void {
	//...
}

// return
fn name() <type> { return x; }
fn name() (<type>, <type>) { return (x, y); }

// parameters 
fn name(param1: <type>) {  }
fn name(param1, param2: <type>) {  } // if param1 have same type as param2
```


## Logic Statements

### If/else
```zig
if (<Statements>) {
    // ...
}
```

### Switch/case
```zig
switch (operation) {
    y => <do-x>,
    x => <do-y>,
    else => <do-else>,
}
```


## Loop

### For-I
```zig
for (var i: u32 = 0; i<10; i++) {
    // ...
}
```

### For-In
```zig
var arr: [10]u8 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

for (arr) |elem, i| {
    // ...
}
```

### While
```zig
while (condition) {
    // ...
}
```


## Converting
```zig
// str -> int
const str = "123";
const num = try std.parseInt(u32, str);

// int -> str
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

## TODO
- [ ] Enums
- [ ] std.io


## Project ideas
* [name](link)
