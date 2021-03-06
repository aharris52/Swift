//
//  main.swift
//  Structures
//
//  Created by Andrew Harris on 11/10/21.
//

// "Structures and classes are good choices for
// storing data and modeling behavior in your apps,
// but their similarities can make it difficult
// [for FNGs] to choose one over the other."
// - developer.apple.com
//
// Apple gives the following guidance on choosing
// between the two:
//
// 1) CHOOSE STRUCTURES BY DEFAULT
// 2) Use classes if you need Obj-C
//    interoperability.
// 3) Use classes when you need control
//    of the identity of the data you're
//    modeling.
// 4) Use structures along with protocols
//    to adopt behavior by sharing implementations.
//    Composition over Inheritance
// 5) See item 1
//
//
// Immutability is briefly covered.
import Foundation

// This struct is very rigid, and would
// present problems as the surrounding
// environment grew around it.
struct Town {
    // Properties
    let name = "Crazy Town"
    var citizens = ["Andrew", "August"]
    var resources = ["par-Lights": 20, "boom-mics": 2, "photometers": 2, "followers": 113000]

    // Behavior
    func film() {
        print("Lights, camera, action!")
    }
}

// Here we have a struct that is far more flexible
// and extensible.
struct NewTown {
    let name: String
    var citizens: [String]
    var resources: [String: Int]
    
    // We we use the self annotation to make it clear which
    // object is being referred to.
    init(townName: String, people: [String], stats: [String: Int]) {
        self.name = townName
        self.citizens = people
        self.resources = stats
    }
    
    // Behavior
    func film() {
        print("Same-same, but different.")
    }
    
    // In order to mutate a property from within a
    // struct you need the "mutating" keyword.
    mutating func addResources() {
        resources["tasty waves"] = 10
    }
    
}

var myTown = Town()
print(myTown.name)
print(myTown.citizens)
print("\(myTown.name) has \(myTown.resources["followers"]!) followers.")
myTown.citizens.append("Denise")
print(myTown.citizens.count)
myTown.film()

var newTown = NewTown(townName: "Ridgemont", people: ["Linda"], stats: ["pizzas": 10])
newTown.film()
print(newTown.name)
print(newTown.citizens)
newTown.citizens.append("Spicoli")
print(newTown.citizens)
newTown.addResources()
print(newTown.resources)
newTown.addResources()
print(newTown.resources)
