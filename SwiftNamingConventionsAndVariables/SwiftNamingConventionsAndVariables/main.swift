//
//  main.swift
//  SwiftNamingConventionsAndVariables
//
//  Created by Andrew Harris on 9/3/21.
//

import Foundation

//  Commenting prevents a code block from executing
//  this prints
print("Hello, World!")
//  this doesn't
// print("Hello, World")
print("")

//  Concatenation:
//  this prints the String literal
//  contained in the quotes
print("Hello, 2+3 World!")
/*
   in swift, concatenation is done using:
   \(varName) syntax
  You can process data within these marks,
  or do mat ops inside them
 */
print("Hello, \(2+3) World!")
// you can manipulate whatever you need
print("5 + 3 = \(5+3)")
print("")
//  camelCase/ Variables:
print("Variable names should be descriptive.")
print("Apple convention is to use camelCasing for vaiable names.")

let myVariable = 42
print("The meaning of life, the universe, and everything is... \(myVariable)")
print("")
/*  Challenge:
   swap the variables so that the values are reversed
 W/O typing a single number
 **/
var a = 5
var b = 3
print("Pre: a=\(a); b=\(b)")

var c = a
a = b
b = c
print("Post: a=\(a); b=\(b)")
