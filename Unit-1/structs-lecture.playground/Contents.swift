import UIKit

//==========================================================================================
//                              Structs
//==========================================================================================
// Structs is a building block of a method in which we emulate an object in swift
//
// struct syntax
// SomeStruct below defines an object
// object oriented programming (OOP) - encapsulates properties and methods on real world objects
struct SomeStruct {
    // definition of the struct
    // properties - variables or constants on the type (struct)
    // initializers - the method in which you create a type
    // methods - function of a custom type (struct)
}

struct Resolution {
    // properties
    // stored properties - a property with a default value
    var width = 0
    var height = 0
    
}

var instanceOfResolution = Resolution()
// accessing properties of resolution

instanceOfResolution.width = 1080

print(instanceOfResolution)

var vga = Resolution(width: 640, height: 480)
print(vga)

//==========================================================================================
//               Structs and enums are ******* VALUE TYPES *************
//==========================================================================================

var hd = Resolution(width: 1920, height: 1080)

var cinema = hd // cinema gets a copy of hd..... *** a copy does not change the original ***

cinema.width = 2048

//=============================================================================================
// using object oriented programming to model a fellow
//=============================================================================================

enum ProgrammingLanguage {
    case swift
    case objectivec
    case java
    case javascript
    case python
    case noLanguage
}

struct Project {
    var projectName = ""
    var projectDescription = ""
    var language = ProgrammingLanguage.noLanguage
}

enum Cohort {
    case iOS
    case android
    case web
    case dataScience
}
struct Fellow {
    
    // properties
    var name = "John Appleseed"
    var cohort = Cohort.iOS
    var programmingLanguages = [ProgrammingLanguage]()
    var githubURL = ""
    var linkedInURL = ""
    var hasProgrammingBackground = false
    var projects = [Project]()
    
    //initializers
    
    // methods
    // can only be called using instanceName.info()
    func info() {
        print("\(name) currently has \(projects.count) in portfolio project(s)")
    }
    
    func resume(language: ProgrammingLanguage) {
        if self.programmingLanguages.contains(language) {
            print("\(name) can be hired")
        } else {
            print("\(name) is not hireable")
        }
    }
    
}

// creating instances of objects
// create an instance using a default initializer
var gregg = Fellow()
gregg.name = "Gregg"
gregg.cohort = .iOS
gregg.projects.append(Project(projectName: "Hangman", projectDescription: "Hangman command line mac os application", language: .swift))
gregg.info()

var oscar = Fellow(name: "Oscar", cohort: .iOS, programmingLanguages: [.swift], githubURL: "github-oscar.com", linkedInURL: "oscar-linkedin.com", hasProgrammingBackground: false, projects: [Project]())
oscar.info()
oscar.projects.append(Project(projectName: "Calculator", projectDescription: "Calculator iOS command line project", language: .swift))
oscar.info()

oscar.resume(language: .swift)


struct Counter {
    var count = 0
    mutating func increment() {
        count += 1
    }

    mutating func increment(by amount: Int) {
        count += amount
    }
    
    mutating func reset() {
        count = 0
    }
}


var counter = Counter()

var secondCounter = Counter()

counter.increment()

counter.increment(by: 3)

secondCounter.increment(by: 9)

counter.reset()

print(counter.count + secondCounter.count)
