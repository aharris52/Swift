//
//  Dragon.swift
//  ClassesDemo
//
//  Created by Andrew Harris on 11/16/21.
//
//  Inheritance demonstration
import Foundation

class Dragon: Enemy {
    var wingSpan = 15
    
    func talk(speech: String) {
        print("Says: \(speech)")
    }
    
    // the override keyword changes the default behavior
    override func move() {
        print("Fly away")
    }
    
    // using super.attack() we can chain the functionality
    // of the two methods
    override func attack() {
        super.attack()
        print("Spits fire, and does 20 damage.")
    }
}
