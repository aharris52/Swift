//
//  Enemy.swift
//  ClassesDemo
//
//  Created by Andrew Harris on 11/16/21.
//

import Foundation

class Enemy {
    var health = 100
    var attackStrength = 10
    
    func move() {
        print("Walk forwards.")
    }
    
    func attack() {
        print("Land a hit, does \(attackStrength) damage.")
    }
}
