//: Playground - noun: a place where people can play

let someBool = true
let someOtherBool = false

// Constants and variables

let implicitInt = 42
let implicitDouble = 42.0
let explicitDouble: Double = 42

var mutableStringArray = ["I'm", "a", "variable"]
mutableStringArray.append("😈")

var optionalString: String? = someBool ? "Am I nil?" : nil
if let firstCharacter = optionalString?.characters.first {
    print(firstCharacter)               // 'A'
} else {
    print(optionalString == nil)        // true
}

// --

struct SomeStruct {
    let someProperty: String
}

let someCollection = [SomeStruct(someProperty: "one"),
                      SomeStruct(someProperty: "two"),
                      SomeStruct(someProperty: "three")]

// Control flow

if someBool {} else if someOtherBool {} else {}

for item in someCollection {
    print(item.someProperty)
}

for index in 0 ..< someCollection.count {
    print(someCollection[index].someProperty)
}

// --

let newString = "New string"
let someString = "Some string"
let someOtherString = "Some other string"
let someInt = 42

// Methods

func doSomething() {}

func doAndReturnSomething(string1: String, string2: String) -> String {
    // Some clever code
    return newString
}

func doAndReturnManyThings(string: String) -> (String, String, Int) {
    // Some clever code
    return (someString, someOtherString, someInt)
}

doSomething()
let someThing = doAndReturnSomething(string1: "A", string2: "B")
let manyThings = doAndReturnManyThings(string: "C")

print("Many things: \(manyThings.0), \(manyThings.1), \(manyThings.2)")

// --

class MySuperClass {}
protocol MyProtocol1 {}
protocol MyProtocol2 {}

// Classes and structures

class Pokestop: MySuperClass, MyProtocol1, MyProtocol2 {
    let name: String
    let location: Coordinate
    var hasLure: Bool

    init(name: String, location: Coordinate, hasLure: Bool = false) {
        self.name = name
        self.location = location
        self.hasLure = hasLure
    }

    // Methods
}

struct Coordinate {
    let lat: Int
    let long: Int

    // (Methods)
}

let myPokestop1 = Pokestop(name: "Name1", location: Coordinate(lat: 30, long: 70))
let myPokestop2 = Pokestop(name: "Name2", location: Coordinate(lat: 30, long: 70), hasLure: true)

// --
