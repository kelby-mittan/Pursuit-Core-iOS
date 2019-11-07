import UIKit

// structs, classes, and initialization
// differences between class and structs
/*
 - structs have a memberwise initializer, classes do not.
 - classes have to provide an initializer if any of its properties do not have a default value
 - classes have inheritance and structs do not
 - due to the nature of the immutability of a struct if you're in a function that modifies one of its properties that method needs to be explicity marked "mutating" in classes this is not a fact because classes are passed by reference which makes it mutable by default
 
 */
struct Fellow {
    var age: Int
    var cohort: Double
    var currentlyEmployed: Bool
    
    //type properties
    
    static let currentYear = 2019
    
    // type methods
    static func programInfo() {
        print("This is a 10-month intensive program")
    }
    
    // instance method
    mutating func employed(isEmployed: Bool) {
        currentlyEmployed = isEmployed
    }
}

Fellow.programInfo()
// making use of structs memberwise initializer
var yulia = Fellow(age: 21, cohort: 6.3, currentlyEmployed: false)

class Animal {
    var age: Int
    var breed: String
    var color: String = "white"
    
    init(age: Int, breed: String) {
        self.age = age
        self.breed = breed
    }
    
    //instance method called info
    
    func info() {
        print("The \(breed) is \(age) years old and is \(color)")
    }
}

class Dog: Animal {
    
}
// Dog is inheriting Animal
// Subclass is Dog, parent class is Animal

let frenchBulldog = Dog(age: 11, breed: "French Bulldog")

frenchBulldog.info()


