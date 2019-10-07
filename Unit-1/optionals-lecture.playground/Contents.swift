import UIKit

//=========================================================================
//                      Optionals
//=========================================================================

// optionals is a type that represents two possibilities either we have a value or we do not have a value
//
// Swift data types support optionals

/*
 String
 */
var name: String = "Alex"

var age: Int? = 21 // optional int with default value of nil

print(age!)

var num = Int("5")

//=========================================================================
//                      ways to unwrap optionals
// 1. forced unwrapping
// 2. nil coalescing
// 3. optional binding using if-let where a value is assigned the existing value if one is available
// 4. implicit unwrapping

//=========================================================================

// forced unwrapping
let decadeFromNow = age! + 10 // to be used sparingly

print(decadeFromNow)

// nil coalescing

var temperature: Int?

var validTemperature = temperature ?? 67 // 67 is the default value un the case the temperature is nil

print("Temperature is \(validTemperature)")

var cohort: Int? = 4
var nextYearCohort = (cohort ?? 6) + 1


// optional binding using if-let where a value is assigned the existing value if one is available

var wage: Int? = 40_000
var year: Int? = nil

// if let unwrapps the wage variable, if it does have a value then that value gets assigned to the bindedValue variable
if let validWage = wage , let validYear = year {  // we only enter the if let block is if age is not nil
    print("You entered \(validWage) as wage and \(validYear) as year")
} else {
    print("Values are unavailable")
}

// string interpolation
var modelYear: Int? = 2006

print("model year is \(modelYear ?? 1959)")

// implicit unwrapping

//=========================================================================
//                    Testing Optionals for equality
//=========================================================================

var someValue: Int? = 7

if someValue == 7 {
    print("\(String(describing: someValue)) is equal to 7")
}

//=========================================================================
//                  looping through an optional array
//=========================================================================

var numbers: [Int?]

numbers = [4, 9, nil, 10, 20, nil]

var sumUnwrappedUsingOptionalBinding = 0
var sumUsingNilCoalescing = 0
var count = 0

for currentNum in numbers {
    // optional binding
    if let validNum = currentNum { // optional binding to unwrap the current num
        sumUnwrappedUsingOptionalBinding += validNum
        count += 1
    }
    // nil coalescing
    sumUsingNilCoalescing += currentNum ?? 0
}
print(count)
print(sumUnwrappedUsingOptionalBinding)
print(sumUsingNilCoalescing)
