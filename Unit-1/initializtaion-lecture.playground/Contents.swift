import UIKit

class Playlist {
  // properties
  var name: String
  var trackCount: Int
  var description: String
  var isTop100: Bool
  
  // designated initializer initializes all properties of the class
  init(name: String,
       trackCount: Int,
       description: String,
       isTop100: Bool){
    self.name = name
    self.trackCount = trackCount
    self.description = description
    self.isTop100 = isTop100
  }
  
    // convenience initializer and failable initializer
    convenience init?(dict: [String:Any]) {
        // using guard let to unwrap value from key in dictionary
        // also using optional downcasting as? to cast to expected type
        guard let name = dict["name"] as? String,
            let trackCount = dict["trackCount"] as? Int,
            let description = dict["description"] as? String,
            let isTop100 = dict["isTop100"] as? Bool else {
                // return exits the initializer
                return nil
        }
        // if all values are available in the guard statement then we call our designated initializer
        self.init(name: name,
                  trackCount: trackCount,
                  description: description,
                  isTop100: isTop100)
    }
    
    convenience init() {
        let names = ["Pursuit Coding List", "Zumba", "Study Playlist", "90's", "Morning Run" ]
        self.init(name: names.randomElement() ?? "unknown",
                  trackCount: 200,
                  description: "Awesome coding music",
                  isTop100: false)
    }
    
    convenience init?(name: String) {
        if name.count < 3 {
            return nil
        }
        self.init(name: name,
                  trackCount: 34,
                  description: "Currently Trending",
                  isTop100: false)
    }
    
// instance method
func info() {
    print("\(name) contains \(trackCount) tracks. \(description)")
    if isTop100 {
      print("\(name) is on the top 100 Spotify list")
    }
  }
}

let playlistDict: [String: Any] = ["name": "Best Pop Songs 2019",
                                   "trackCount": 128,
                                   "description": "Awesome playlist",
                                   "isTop100": true
]

// create a playlist
if let myPlaylist = Playlist(dict: playlistDict) {
    print("Track count is \(myPlaylist.trackCount)")
    print(myPlaylist.name)
}

let randomPlaylist = Playlist()
print(randomPlaylist.name)

if let playlistWithName = Playlist(name: "Reggae Tunes") {
    print("Playlist with \(playlistWithName.name) was created")
    
} else {
    print("not created")
}
