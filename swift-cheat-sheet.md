# Swift 3 Cheat Sheet <img align="right" src="http://www.applitude.no/static/img/banner.svg" height="45"></div>

### Constants and variables

```swift
let implicitInt = 42
let implicitDouble = 42.0
let explicitDouble: Double = 42
let countableRange = 0 ..< 420

var mutableStringArray = ["I'm", "a", "variable"]
mutableStringArray.append("😈")

var optionalString: String? = someBool ? "Am I nil?" : nil
if let firstCharacter = optionalString?.characters.first {
    print(firstCharacter)               // 'A'
} else {
    print(optionalString == nil)        // true
}
```

### Control flow

```swift
if someBool {} else if someOtherBool {} else {}

for index in 0 ..< someCollection.count {
    print(someCollection[index].someProperty)
}

for item in someCollection {
    print(item.someProperty)
}

for primeNumber in countableRange where primeNumber.isPrime {
    print(primeNumber)     // 2, 3, 5, 7, 11, 13 ... 419
}

```

### Methods

```swift
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
```

### Classes and structures

```swift
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
```

### Extensions and computed properties

```swift
extension String {
    var isUppercase: Bool {
        for character in self.characters {
            if character >= Character("a") && character <= Character("z") { return false }
        }
        return true
    }
}

print("AB5~DWZ-1".isUppercase)      // true
```
