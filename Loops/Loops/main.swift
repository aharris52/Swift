//
//  main.swift
//  Loops
//
//  Created by Andrew Harris on 9/23/21.
//

import Foundation

//Swift uses loops common to all programming languages.
//This exercise is meant to familiarize myself with
//the syntax of Swift in constructing these.

print("(1)    for var in dataStructure { doSomething() }")
let names = ["Chuck Norris", "Tom Cruise", "Oprah Winfrey", "Ricky Bobby", "Jesus"]
for name in names {
    print("Hello, \(name)!")
}
print("")
print("")
// Inclusive range operator is how you set the
// # of executions.
// Like for(int i = 0; i < 6; i++)
print("(2)    for number in 1...5")
print("Here we do some stuff with our loop index...")
for number in 1...5 {
    print("\(number), ah, ah, ah!")
}
print("")
print("")
print("(3)    And here we use the index simply as an index")
print("Syntax: for _ in 1...5")
for _ in 1...5 {
    print("My inex increased by 1...")
}
