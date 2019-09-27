import UIKit



// Control Flow, Tuples
// if / else
// block of code { code in here }
/*
 
 if (some condition) {
    execute this block of code
 } else {
    condition gets executed if the if condition is false
 }
 
 */

//==========================================================================================
//                                 if
//==========================================================================================

var day = "Friday".lowercased()

if day == "friday" {
    print("woohoo TGIF 🙏")
}

//==========================================================================================
//                                if/ else
//==========================================================================================

day = "Monday".lowercased()

if day == "saturday" {
    print("it's a beach day")
} else {
    print("just another day")
}

day = "monday"

print("Today is \(day)")

//==========================================================================================
//                                if/ else if/ else
//==========================================================================================

var temperature: Double = 0

if temperature < 45 {
    print("it's cold")
    if temperature == 0 {
        print("brrrrr")
    }
} else if temperature == 85 {
    print("this is my kind of weather")
} else {
    print("the temperature today is \(temperature)")
}

//==========================================================================================
//                            Ternary Operator - means 3

// (condition) ? execute if true : execute if false

//==========================================================================================

var age = 21
age = 20

print(age > 20 ? "you can have a drink" : "get back home")

age > 20 ? print("you can drink") : print("get back home")

//==========================================================================================
//                                Switch
//==========================================================================================

var cohort = "web"

switch cohort {

case "iOS":
    print("iOS is awesome")
case "iOS 6.3":
    print("iOS 6.3 is awesome")
case "iOS 6.1":
    print("iOS 6.3 is better")
case "web":
    print("iOS 6.3 is better")
    fallthrough
case "backend":
    print("python is cool")
default:
    print("not part of Pursuit")
}

//==========================================================================================
//                                  Ranges
//==========================================================================================

let ageRequirment = 18...35

let halfRangeExample = 18..<35

let decimalRange = 18.5...23.5



//==========================================================================================
//                           Switch Statement on Ranges
//==========================================================================================

let classNumber = 6.3

switch classNumber {

case 0..<2:
    print("it's 2014 C4Q")
case 2..<3:
    print("it's 2015 and objective -C is still the leading launguage")
case 3..<4:
    print("2016")
case 4..<5:
    print("2017")
case 4..<5:
    print("2018")
default:
    print("see you in 2020")
}

//==========================================================================================
//                                  Tuples
//==========================================================================================

let coordinate = (40.7429595, -73.9441102)
coordinate.0
coordinate.1

let socials = (twitter: "@alexpaul", instagram: "@alexcpaul")
socials.twitter
socials.instagram

//==========================================================================================
//                                  Switch Statements on Tuples
//==========================================================================================

let kim = (age: 54, cohort: 6.1, passion: "music")
let nancy = (age: 25, cohort: 6.4, passion: "rights")
let heather = (age: 19, cohort: 6.3, passion: "gaming")

let currentFellow = kim

switch currentFellow {
case(18..<21, _, _):
    print("not allowed to drink")
case(_, 6.1, _):
    print("ios is awesome")
case(18..<21, _, _):
    print("ssss")
case(_, _, "gaming"):
    print("ssss")
default:
    print("dddd")
}



