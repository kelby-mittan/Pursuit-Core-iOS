import UIKit

//=============================================================================================
//                                  Classes
//=============================================================================================

// classes - building block that enable us to create complex "objects" in our program. Those objects are created using properties and methods.

// class syntax

class MyFirstClass {
    
}

enum Day: CaseIterable {
    case monday, tuesday, wendesday
}
Day.allCases.count

//=============================================================================================
// inheritance - ONLY classes can inherit from other classes
// in swift we only have single inheritance, meaning you can only inherit from one parent

// Object oriented programming consists on those concepts:
// - inheritance
// - encapsulation - use private access modifiers on your properties and access them externally through methods
// - polymorphism - changing the form of an object
class Person {
    var name = "Jane Doe" // stored property
    var age = 21
    
    // instance methods
    func info() {
        print("This person's name is \(name) and age is \(age)")
    }
}

class Fellow: Person {
    override func info() {
        print("\(name) is a fellow at Pursuit and is \(age) years old")
    }
}

class Employee: Person {
    var position = "iOS developer"
    var salary = 85_000
    
    override func info() {
        print("\(name) is an \(position) and is making $\(salary)")
    }
}

// creating an instance of Fellow()

let brendon = Fellow()
brendon.name = "Brendon"
brendon.age = 31
brendon.info()

let alex = Employee()
alex.name = "Alex"
alex.info()

//=============================================================================================
//      polymorphism - changing a form on an object
//=============================================================================================

// instance of a Person
let tom = Person()
tom.name = "Tom"

// instance of an Employee
let john = Employee()
john.name = "John"
// instance of a Fellow
let bienbenido = Fellow()
bienbenido.name = "Bienbenido"
bienbenido.age = 22

let people = [tom, john, bienbenido]

for person in people {
    person.info()
}

//=============================================================================================
//      struct are value types - meaning assigning a new variable that variable gets a copy of the original.                              Changing the copy does not change the original
//      classes are reference types -
//=============================================================================================

let anna = Fellow()
anna.name = "Anna"
print(anna.name)

let luba = anna
print(luba.name)

luba.name = "Luba"
print(luba.name)

print(anna.name)

//=============================================================================================
//  swift provides a way to check for object equality of identity using ===
//=============================================================================================

if anna === luba {
    print("both objects are pointing to the same reference")
}

//=============================================================================================
//         introduction to initializers
//=============================================================================================

struct Dog {
    var breed: String
    var age: Int
}
// creating an instance of Dog using the memberwise initializer of the Dog struct, only structs provide member wise initializers
var frenchBulldog = Dog(breed: "French Bulldog", age: 7)

// all properties need to have default values
class Game {
    // properties
    var name: String
    var numOfPlayers: Int
    
    // initializers
    init(name: String, numOfPlayers: Int) {
        self.name = name
        self.numOfPlayers = numOfPlayers
    }
    func info() {
        print("The game is \(name) and number of players is \(numOfPlayers)")
    }
}

let basketball = Game(name: "Basketball", numOfPlayers: 5)
let football = Game(name: "Football", numOfPlayers: 11)

print("the game is \(basketball.name)")
basketball.name = "NBA"
basketball.info()

//=============================================================================================
//          creating instances from a dictionary
//=============================================================================================

class Playlist {
    //properties
    var name: String
    var trackCount: Int
    var description: String
    var isTop100: Bool
    
    init(name: String, trackCount: Int, description: String, isTop100: Bool) {
        self.name = name
        self.trackCount = trackCount
        self.description = description
        self.isTop100 = isTop100
    }
    func info() {
        print("\(name) contains \(trackCount) tracks. \(description)")
        if isTop100 {
            print("\(name) is on the top 100 spotify playlist")
        }
    }
}

let playlistDict: [String: Any] = ["name": "Best Pop Songs 2019",
                                   "trackCount": 128,
                                   "description": "Awesome playlist",
                                   "isTop100": true
]

func getPlaylist(dict: [String: Any]) -> Playlist? {
    // accessing the "name" key in dict
    // typecasting Any to String using optional downcasting as?
    // used nil coalescing to unwrap optional String? to String
    let name = dict["name"] as? String ?? "no name available"
    let trackCount = dict["trackCount"] as? Int ?? 0
    let description = dict["description"] as? String ?? "no description"
    let isTop100 = dict["isTop100"] as? Bool ?? true
    let playlist = Playlist(name: name,
                            trackCount: trackCount,
                            description: description,
                            isTop100: isTop100)
    return playlist
}
let playlist = getPlaylist(dict: playlistDict)
print(playlist?.name ?? "playlist not created")

playlist?.info()




