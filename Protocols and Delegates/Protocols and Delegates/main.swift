//
//  main.swift
//  Protocols and Delegates
//
//  Created by Andrew Harris on 8/24/21.
//
//  This is intended to assist in understanding the
//  application of the protocols and the Delegation
//  design pattern.


//  Will be the protocol that will need to be
//  implemented if we want an object to be
//  able to perform this behavior.
protocol AdvancedLifeSupport {
    func performCPR()
}


class EmergencyCallHandler {
    //  This right here means that any object wishing
    //  to be a handler must also implement this
    //  method.
    var delgate: AdvancedLifeSupport?
    
    func assessSituation() {
        print("Can you tell me what happened?")
        print()
    }
    
    ///  Here's the power of the pattern, the EmergencyCallHandler
    ///  doesn't need to know anything about the object that's using
    ///  it other than it can.
    func medicalEmergency() {
        delgate?.performCPR()
    }
}

struct Paramedic: AdvancedLifeSupport {
    
    //  Here we set "self" to be the delegate, or agent
    //  of our emergency protocol.
    init(handler: EmergencyCallHandler) {
        handler.delgate = self
    }
    
    func performCPR() {
        print("The paramedic does chest compressions, 30 per minute.")
    }
    
}

class Doctor: AdvancedLifeSupport {
    
    //  Here we set "self" to be the delegate, or agent
    //  of our emergency protocol.
    init(handler: EmergencyCallHandler) {
        handler.delgate = self
    }
    
    func performCPR() {
        print("The doctor does chest compressions, 30 per minute.")
    }
    
    func useStethoscope(){
        print("Listening for heart sounds.")
    }
}

class Surgeon: Doctor {
    override func performCPR() {
        super.performCPR()
        print("Sings 'Staying Alive' by the BeeGees.")
    }
    
    func useElectricDrill() {
        print("Whirr...")
    }
}

let emilio = EmergencyCallHandler()

//  When you uncomment one of the following responders,
//  the corresponding class/struct's implementation
//  of the performCPR() method will be called.

//let pete = Paramedic(handler: emilio)
//let jill = Doctor(handler: emilio)
let serena = Surgeon(handler: emilio)

emilio.assessSituation()
emilio.medicalEmergency()











