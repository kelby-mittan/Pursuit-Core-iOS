import UIKit

//var str = "Hello, playground"

//============================================================================
//                          STRING
//============================================================================

var str = "Hello, Playground"

// declared a fellow name
// Type inference: implicit declaration of a variable
var fellowName = "Kelby Mittan"

// Type Annotation - explicity writing the data type using : (colon)
var cohort: String = "iOS 6.3"

//============================================================================
//                         CHARACTER
//============================================================================

var alphabet: Character = "c"

// mutating cohort
// var is mutable - meaning can be changed
cohort = "iOS 7.3"

//============================================================================
//                         INTEGER
//============================================================================

// declared variable age and initialized value of 32
var ageOfFellow = 32

var futureAge = ageOfFellow + 8

futureAge

print("Age of fellow 8 years from now is \(futureAge)")

//============================================================================
//                         DOUBLES
//============================================================================

var balance = 100005.9

// re-assign balance a new value
balance = balance + 85000

print(balance)

balance -= 180000

print(balance)

//============================================================================
//                 Boolean - Bool, Comparison
//============================================================================

var result = 70 < 100

print(result)

var otherResult = result && true

print(otherResult)

-5 > -2 && 3 >= -5

//============================================================================
//                         Arithmetic operators
//============================================================================

//var salary = 20000
//salary *= 2
//print(salary)

var salary = 20000
salary *= 2
print(salary)

var marathonTime = 600
marathonTime /= 2
print(marathonTime)



//============================================================================
//               Modulo operator or Remainder operator
//============================================================================

var modResult = 16 % 3
print(modResult)

var even = 12 % 6
print(even)


//============================================================================
//                         Constants
//============================================================================

let pi = 3.14
