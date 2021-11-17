//
//  main.swift
//  ClassesDemo
//
//  Created by Andrew Harris on 11/16/21.
//
//  A nice review of OOP principles and
//  syntax for related principles as they
//  apply to the Swift Programming Language.

import Foundation

let skeleton = Enemy()
print("Here's our Skeleton():")
print(skeleton.health)
skeleton.move()
skeleton.attack()
print("")

let skeleton2 = Enemy()
let skeleton3 = Enemy()
let eragon = Dragon()
print("Here's my Dragon() class")
print("Because we are using a class, the properties a mutatable:")
print("eragon.attackStrength = 100")
eragon.attackStrength = 100
eragon.attack()
eragon.talk(speech: "Well this is akward...")
eragon.move()
print("My wings are \(eragon.wingSpan) feet accross")
print("We also get to see how we can mutate the properties")
print("of a class rather easily. ")
eragon.attack()

