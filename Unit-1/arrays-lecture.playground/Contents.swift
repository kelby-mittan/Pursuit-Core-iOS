import UIKit

// arrays - an array is an ordered collection of items

//==========================================================================
//                  initializing arrays
//==========================================================================

// using type annotation declaring an array of type string

var bucketList: [String]

bucketList = ["France" , "Australia" , "South Africa" , "Aruba" , "Cozumel" , "Brazil" , "Japan" ]

print(bucketList)

// count items in the array

print("There are \(bucketList.count) countries on my bucket list")

var threeDoubles = Array(repeating: 0.0, count: 3)

print(threeDoubles)

//==========================================================================
//                  accessing values inside an array
//==========================================================================

// array of planets
// declaring an array using an array literal

var planets = ["Mercury" , "Venus" , "Earth" , "Mars" , "Jupiter" , "Saturn" , "Uranus" , "Neptune"]

var dwarfPlanets = ["Pluto"]

let thirdRockFromSun = planets[2]

print(thirdRockFromSun)

// last index
print("The last planet in our solar system is \(planets[planets.count - 1])")

let secondToLast = planets[planets.count - 2]

print("The second to last planet in our solar system is \(secondToLast)")

var middlePlanet = planets.count / 2

print("Our middle planet is \(planets[middlePlanet])")

//==========================================================================
//                  some properties and methods on arrays
//==========================================================================

// if planets.first is not nil assign the value to the first planet
// here we are using optional binding
//var programmingLanguages: [String] = [] // using type annotation

var programmingLanguages = [String]() // using type inference

//  append to an array
programmingLanguages.append("Swift")

if let firstProgrammingLanguage = programmingLanguages.first {
    print("First programming languages is \(firstProgrammingLanguage)")
} else {
    print("Looks like you haven't started programming")
}

// removing items from an array

print("there are \(planets.count) planets")

planets.append("Pluto")
print(planets)

let removedPlanet = planets.remove(at: planets.count - 1)

if let firstPlanet = planets.first {
    print("Our first planet is \(firstPlanet)")
}

print(planets.shuffled())

// random

let randomPlanet = planets.randomElement() ?? "Planet X"

print(randomPlanet)

// removeAll

//planets.removeAll()
//print(planets.count)

print(planets)

//  popLast()

let oopsAnotherPlanetIsGone =  planets.popLast() ?? "exo planet X"

print(oopsAnotherPlanetIsGone)

//==========================================================================
//                      modifying arrays
//==========================================================================

var classRoom1 = ["Maigrett" , "Greg" , "Adam"]

var classRoom2 = ["Aaron" , "Jack" , "Vic"]

// adding or concatenating arrays together
// NOTE: when adding arrays together they need to be of the same data type
classRoom1.count

classRoom1 += classRoom2

classRoom1.count

//==========================================================================
//                iterating or looping through arrays
//==========================================================================

// method 1: iterating through arrays

for planet in planets {
    print("Planet is \(planet)")
}

// method 3: iterating using enumerated

planets.append("Neptune")

for (index, planet) in planets.enumerated() {
    print("\(planet) \(index)")
}

// method 3:

for index in 0..<planets.count {
    print(planets[index])
}

// ARRAYS Part 2
//==========================================================================
//                iterating or looping through arrays
//==========================================================================

var musicalArtists = ["John Mayer" , "Bob Marley" , "Burning Spear" , "Steel Pulse" , "Mos Def" , "The Beatles" , "Norah Jones" , "Lauryn Hill"]

let artist = musicalArtists[2]

print(artist)

// array slice

let reggaeStars = musicalArtists[1...3]

print(reggaeStars)

// modify the value of an array using subscripting

musicalArtists[1] += " (The Reggae Legend)"

print(musicalArtists)

// replace an element using subscript

musicalArtists[musicalArtists.count - 1] = "Prince"

print(musicalArtists)

//==========================================================================
//              multi-dimensional arrays
//==========================================================================

let matrix = [ [1 , 2 , 3] ,
               [4 , 5 , 6] ,
               [7 , 8 , 9] ]

let exampleArray = ["Brendan" , "Eddie"]
print(matrix.count)

// using a for in loop print out the elements of the matrix

for arr in matrix {
//    print(arr)
    for num in arr { // each element is an array
        print(num, terminator: " ")
    }
    print()
}

//using subscripting on a mult-dimensional array

let firstElement = matrix[0]
let lastElement = matrix[matrix.count - 1]

print(lastElement[lastElement.count - 1])

print(firstElement)

print(firstElement[1])
