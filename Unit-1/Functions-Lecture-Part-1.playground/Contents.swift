import UIKit

// Functions: a block of code that enables to call it anywhere in our project or file

/*
 Vocabulary
 - function
 - argument
 - parameters, internal, external
 - input
 - output
 - function definition
 - calling a function or invoking a function, excecute
 */

//===========================================================================================
//                          function syntax
//===========================================================================================

// function definition
func myFirstFunction() {
    print("Happy hump day 🐫")
}

// call or invoke or execute
myFirstFunction()

// number is an external paramater name
// x is an internal paramater name
// Int is the data type of the function's input
// Int is also the data type of the output
// return type syntax is ->

func doubleNumber(number x: Int) -> Int {
    let result = x * 2
    return result
}

let resultOfCalculation = doubleNumber(number: 10)
print(resultOfCalculation)

// write a function that adds two a number and triples it
// (10 + 2) * 36

func numPlusTwoTimesThree(number: Int) -> Int {
    return (number + 2) * 3
}
print(numPlusTwoTimesThree(number: 10))

// write a function that adds an exclamation mark to a string
// input: hello
// output: hello!

let hello = "hello"

func helloExclamation(addChar: String) -> String {
    return hello + addChar
}

print(helloExclamation(addChar: "!"))

//===================================================================
//      optional types on functions
//===================================================================

func githubProfile(age: Int?, employmentStatus: Bool?) -> Bool? {
  var profileComplete: Bool?
  if let _ = age,
    let _ = employmentStatus {
    profileComplete = true
  } else {
    profileComplete = nil
  }
  return profileComplete // true or false
}

if let profileComplete = githubProfile(age: 8, employmentStatus: true) {
  print("Profile complete \(profileComplete)")
} else {
  print("Profile incomplete.")
}



