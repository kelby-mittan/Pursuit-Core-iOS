import UIKit

//=========================================================================
//                      Dictionaries
// Dictionary - A collection whose elements are key-value pairs.
//              the key needs to conform to the Hashable protocol, this simply
//              means the key needs to be made unique by a hashing algorithm
//=========================================================================

let name = "alex"
let hashValue = name.hashValue

print("hash value of \(name) is \(hashValue)")


//=========================================================================
//                 initializing and populating dictionaries
//=========================================================================

//declare and initialize an empty dictionary

var nameOfIntergers = [Int: String]()

// count number of elements in nameOfIntergers

print("there are \(nameOfIntergers.count) currently in the nameOfIntergers dictionary ")

// assign a key value(element) pair to nameOfIntergers
nameOfIntergers[16] = "sixteen"

nameOfIntergers[4] = "four"

let num = nameOfIntergers[0] ?? "zero" // find me the value where the key is 4

print(nameOfIntergers)


// method 2:

//var airports: [String: String] = [:]

var airports: [String: String] = ["Copenhagen": "CPH" ,
                                  "Los Angeles": "LAX" ,
                                  "Saint Lucia": "LCU"]


print("there are \(airports.count) airports currently")

//=========================================================================
//                   Accessing Dictionary Values
//=========================================================================

//there is an isEmpty property on dictionaries
if airports.isEmpty {
    print("airports is empty")
} else {
    print("there are \(airports.count) airports currently")
}

//=========================================================================
//                   Looping through dictionaries
//=========================================================================

let bucketLists: [String: String] = ["Sweden": "Stockholm",
                                "Australia": "Cairnes",
                                "Mexico": "Cozumel",
                                "New Zealand": "Wellington",
                                "Morrocco": "Cassablanca"]
for (country , place) in bucketLists {
    print("I want to visit \(place) located in \(country)")
}

let destination = bucketLists["Morrocco"] ?? "unknown"

print(destination)


let favoriteAlbums = ["John Mayer": "Room for squares" , "Post Malone": "Stoney" , "Tupac": "All eyes on me" , "Drake": "Take Care", "Teyana": "K.t.s.e."]

var artistName = "Not Found"

for (artist , album) in favoriteAlbums {
    if album == "Stoney" {
        artistName = artist
        print(artist)
    }
}
// print("\(artistName) created \(spotifyArtists[artistName])")

// get values from a dictionary
let artists = Array(favoriteAlbums.keys)

for artist in artists {
    print("artist is \(artist)")
}

// given albums, sort by album name
// sorted by default is ascending meaning a-z
// descending is z-a
for artistName in favoriteAlbums.keys.sorted().reversed() {
    print("artists name sorted is \(artistName)")
}

