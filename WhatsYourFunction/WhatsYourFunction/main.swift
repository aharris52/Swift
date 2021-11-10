//
//  main.swift
//  WhatsYourFunction
//
//  Created by Andrew Harris on 11/9/21.
//

import Foundation

// Functions are kind of the crux of programming.
// They are the things we are asking our robot overlords
// to do for us. In this console program we will go
// over three way of constructing a function in Swift
// for different puroses.


// This is the most succinct syntax for function
// construction in Swift.
//
// This method requires no parameters, and
// performs no data manipulation.
func meaningOfLife() {
    print("42")
}
meaningOfLife()


func greeting(name: String) {
    print("Hello \(name)")
}
greeting(name: "Bro Montana")

func greeting02(name: String) -> Bool {
    if name == "Bro Montana" || name == "Broseph Smith" {
        return true
    }
    else {
        return false
    }
}

var test1 = greeting02(name: "Broseph Smith")
var test2 = greeting02(name: "Your Mom")
print(test1)
print(test2)
