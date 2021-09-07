//
//  main.swift
//  ControlFlow
//
//  Created by Andrew Harris on 9/7/21.
//

import Foundation

//This playground is for exploring the syntax of
//control flow and logic in Swift using simple
//examples.
func loveCalculator(){
    //random number 0-100
    let loveScore = Int.random(in: 0 ... 100)
    print("Love Score: \(loveScore)")
    //if loveScore == 100
    if loveScore > 80 {
        print("You love each other like Kanye loves Kanye.")
    } else if (loveScore > 39) && (loveScore < 81) {
        print("You go together like Coke and Mentos")
    }
    else {
        //else forever alone
        print("You'll be forever alone.")
    }
    print("")
}

func cowboysSuck(){
    
    let suckScore = Int.random(in: 0 ... 100)
    print(suckScore)
    switch suckScore {
    case 0 ... 32:
        print("Cowboys suck!")
    case 33 ... 66:
        print("Yup, the Cowboys still suck.")
    case 67 ... 98:
        print("You just wait 'till next year... (every Cowboys fan since 1995)")
    case 99 ... 100:
        print("Even a blind squirrel can find a nut in the dark.")
    default:
        print("Wouldn't you know it, the Cowboys still ain't worth a damn.")
    }
    print("")
}


loveCalculator()
cowboysSuck()
