import UIKit

// enumerations or enums: is a group of related values or items e.g days of week, mta train lines, number of fingers,
// points on a compass etc....

// enum keyword starts the enum definition

enum CompassPoint {
    case north
    case south
    case east
    case west
}

// create an enum for days of the week

enum DaysOfWeek {
    case monday, tuesday, wedensday, thursday, friday, saturday, sunday
}

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

//=================================================================
// creating an instance of the enum DaysOfWeek

let name = "Bob"

let day = DaysOfWeek.tuesday
var weekend = DaysOfWeek.saturday

switch weekend {
case .monday:
    print("Back to pursuit")
case .tuesday:
    print("Enums lab is due")
case .wedensday:
    print("Professional skills")
case .thursday:
    print("Intro to classes")
case .friday:
    print("Calculator is due")
case .saturday:
    print("College Football")
case .sunday:
    print("Are you ready for some football")
}

// ==============================================================================================
//                                iterating through enums
// ==============================================================================================

enum Beverage: CaseIterable {
    case coffee, tea, juice
}

print("There are \(Beverage.allCases.count) beverages")

for beverage in Beverage.allCases {
    print("Current beverage is \(beverage)")
}

// ==============================================================================================
//                                Enums part 2
// ==============================================================================================

// associated values - adds more value (types) to a case

enum MTALine {
    case redLine(Int)
    case greenLine(line: Int)
    case purpleLine
    case blueLine
    case orangeLine
    case brownLine
    case yellowLine(trainName: Character, startTime: Int, endTime: Int)
    case grayLine
}
// creating instances.....
let rTrain = MTALine.yellowLine(trainName: "Q", startTime: 10, endTime: 25)
let oneTrain = MTALine.redLine(1)
let fiveTrain = MTALine.greenLine(line: 5)

func trainInformation(train: MTALine) {
    switch train {
    case .redLine:
        print("The 1,2,3 trains are running on time")
    case .yellowLine(let trainName, let sTime, let eTime):
        print("The \(trainName) train is running today, it will be \(sTime) min before it gets here, it will take \(eTime) min to get to your destination")
    case .greenLine(let line):
        print("The \(line) train is running today")
    default:
        print("All trains are running normally")
    }
}

trainInformation(train: rTrain)
trainInformation(train: oneTrain)
trainInformation(train: fiveTrain)

// ==============================================================================================

// ==============================================================================================

enum ProgrammingLanguage {
    case swift
    case python
    case objectiveC
    case go
    case r
    case java
    case javascript
    
    // functions in custom types are called methods
    func info() {
        // we need to switch on an instance of ProgrammingLanguage
        switch self {
        case .objectiveC:
            print("Last major update was in 2014")
        case .swift:
            print("Swift was introduced in 2014")
        case .java:
            print("Java is used to build android apps, also heavily used on wall street")
        default:
            print("All languages are fun")
        }
    }
    func startingSalary() {
        switch self {
        case .swift:
            print("1 million")
        case .go:
            print("75,000")
        default:
            print("Zilch")
        }
    }
}

let swiftLanguage = ProgrammingLanguage.swift
let goLanguage = ProgrammingLanguage.go
swiftLanguage.info()
goLanguage.startingSalary()


// ==============================================================================================
//                                      Raw values
// ==============================================================================================

enum Day: Int {
    case monday = 1
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

print(Day.monday.rawValue)

// ==============================================================================================
//          initializing an instance of an enum with a raw value
// ==============================================================================================

// nil coalescing
let weekendDay = Day(rawValue: 10) ?? Day.saturday

print(weekendDay)

// optional binding
if let validweekendDay = Day(rawValue: 7) {
    switch validweekendDay {
    case .saturday:
        print("college football")
    case .sunday:
        print("NFL 🏈")
    default:
        print("just another day")
    }
} else {
    print("Doesn't Exist")
}


