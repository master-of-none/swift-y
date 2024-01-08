import Foundation

let myName = "master"
let yourName = "Foo"

var names = [
    myName,
    yourName
]

//names = ["Blah"]
names.append("Fizz")
names.append("Fuzz")

let foo = "Foo"
var foo2 = foo
foo2 = "Foo 2"

let moreNames = [
    "foo", "Bar"
]

var copy = moreNames
copy.append("baz")

// This is by reference
let oldArray = NSMutableArray(
    array: ["Foo", "Bar"]
)
oldArray.add("Baz")

