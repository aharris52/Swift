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


struct NewTown {
    let name: String
    var citizens: [String]
    var resources: [String: Int]
    
    init(townName: String, people: [String], stats: [String: Int]) {
        name = townName
        citizens = people
        resources = stats
    }
}

var myTown = Town()
print(myTown.name)
print(myTown.citizens)
print("\(myTown.name) has \(myTown.resources["followers"]!) followers.")
myTown.citizens.append("Denise")
print(myTown.citizens.count)
myTown.film()
