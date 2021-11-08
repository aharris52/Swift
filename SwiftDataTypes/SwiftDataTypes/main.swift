//
//  main.swift
//  SwiftDataTypes
//
//  Created by Andrew Harris on 11/8/21.
//
// This program is an introduction to data types in the Swift
// programming language. It is meant to be a brief introduction
// and by no means an exhaustive exploration.

import Foundation
//
//
// Strings
//
//

print("Playing with data types and variable declarations.")
print("")

// Here we can declare a String a few different ways. (1) By explicitly
// defining it. (2) By initiating it, then defining it later. (3) By making
// it an optional value.
var name = "Charlie Brown"
var newName: String
newName = "Monty Python"
var newerName: String?
var newestName: String = "James Bond"
// INCORRECT
// var newerName
print("Strings:")
print(name)
print(newName)
print(newerName)
print(newestName)
print("")


//
//
// Numbers
//
//
// There are different ways to store a decimal number in Swift.
// All have varying degrees of accuracy, and can affect the
// outcome of a function.

var latitude: Double
latitude =  47.3073
// As this number gets bigger, the complier will start to truncate
// digits. If the number is big enough, this truncation error can
// greatly affect the accuracy of your output
// A double is a 64bit number, a float is a 32bit
var longitude: Float
longitude = -122.2285

var floatRange01: Float
floatRange01 = 123456789.987654321

var floatRange02: Double
floatRange02 = 123456789.987654321

print("")
print("Numeric Types:")
print("input number = 123456789.987654321")
print("")
print("Float: \(floatRange01)")
print("Double: \(floatRange02)")


//
//
// Bools
//
//
var devIsSleepy: Bool
devIsSleepy = true
var moreCaffeine = true
var rollTide = false
print("")
print("Boolean:")
print("Sleepy Dev?: \(devIsSleepy)")
print("Would you like more caffeine? \(moreCaffeine)")
print("Roll Tide: \(false)")
