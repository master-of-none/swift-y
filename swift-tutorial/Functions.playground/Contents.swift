import Foundation

func someRandomFunction(){
    "Some letters"
}
someRandomFunction()

func plusTwo(val:Int){
    let newValue = val + 2
}
plusTwo(val: 67)

func newPlusTwo(val: Int) -> Int {
    val + 2
}
newPlusTwo(val: 67)

func customMinus( _ lhs:Int, _ rhs:Int) -> Int{
    lhs - rhs
}

let customSubtract = customMinus(20, 10)

@discardableResult
func customAdd( _ lhs:Int, _ rhs:Int ) -> Int{
    lhs + rhs
}

customAdd(20, 30)


// Closures
let add: (Int, Int) -> Int = {
    (lhs: Int, rhs: Int) -> Int in
    lhs + rhs
}
add(20, 30)

func customAddClosure( _ lhs: Int, _ rhs: Int, using function: (Int, Int) -> Int) -> Int {
    function(lhs, rhs)
}

customAddClosure(20, 30) { (lhs, rhs) in
    lhs + rhs
}


// Structures
struct Person {
    let name: String
    let age: Int
}

let foo = Person(name: "Foo", age: 26)
foo.name
foo.age

struct Computer {
    let name: String
    let manufacturer: String
    
    init(name: String){
        self.name = name
        self.manufacturer = "Some company"
    }
}

let val = Computer(name: "C69")
val.name
val.manufacturer
