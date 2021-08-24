//
//  main.swift
//  Protocols Demo
//
//  Created by Andrew Harris on 8/23/21.
//
//  This is a console app for demonstrating the use of
//  protocols in the Swift programming language.
//
//  Protocols are a way of defing a generic set of characteristics
//  or behaviors while delegating the specific implementation to
//  a client.
//

protocol CanFly {
    // protocols are declared using a blank method
    // the implementation is left to the objects
    func fly()
}


class Bird {
    
    var isFemale = true
    
    func layEgg(){
        if isFemale {
            print("The bird makes a new bird in a shell.")
        }
    }
    
    // implementation
    func fly() {
        print("The bird flaps its wings and lifts off into the sky...")
    }
}

class Eagle: Bird, CanFly {
    override func fly() {
        print("The eagle glides in the air using air currents.")
    }
}

// for this class, since we don't implement the "fly()" method the
// app won't start if we try pass a penguin into the museum.
class Penguin: Bird {
    func swim() {
        print("The penguin paddles through the water.")
    }
}

struct Airplane: CanFly {
    func fly() {
        print("The airplane uses engines to lift off into the air.")
    }
}

struct FlyingMuseum {
    // This ensures that we only accept a flying object
    // that implements the "CanFly" protocol.
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

// let's declare some objects and use them in our museum
// of flying stuff
let myEagle = Eagle()
let myPenguin = Penguin()
let myPlane = Airplane()

let museum00 = FlyingMuseum()
museum00.flyingDemo(flyingObject: myEagle)

let museum01 = FlyingMuseum()
//museum01.flyingDemo(flyingObject: myPenguin)

let museum02 = FlyingMuseum()
museum02.flyingDemo(flyingObject: myPlane)









