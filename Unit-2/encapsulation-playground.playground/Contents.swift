import UIKit

// encapsulation:

enum Category {
    case tech
    case art
    case health
    case fashion
}

struct Event {
    private var location: String
    private var startTime: String
    private var name: String
    private var category: Category
    
    init(location: String,
         startTime: String,
         name: String,
         category: Category) {
        self.location = location
        self.startTime = startTime
        self.name = name
        self.category = category
    }
    
    func info() {
        print("The \(category) event for \(name) at \(location) and starts at \(startTime) ")
    }
    
    mutating func updateEvent(newEvent: Event) {
        startTime = newEvent.startTime
        location = newEvent.location
        
        // update all properties
//        self = newEvent
    }
}

var event = Event(location: "468 Broadway",
                  startTime: "10:30 a.m.",
                  name: "Peer Labs",
                  category: .tech)
//var updateEvent = event

//updateEvent.name = "Rey's hour"
event.info()

let newEvent = Event(location: "23 prince", startTime: "12:00", name: "Peer Labs", category: .tech)
event.updateEvent(newEvent: newEvent)
event.info()

