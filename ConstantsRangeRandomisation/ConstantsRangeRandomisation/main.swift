//
//  main.swift
//  ConstantsRangeRandomisation
//
//  Created by Andrew Harris on 9/3/21.
//

import Foundation

/* var is used to declare a variable
   let is used to declare a constant
   
   if you try to reassign a constant the linter
   will not be happy with you.**/


/*
 Inclusive Range
 use the "closed range" operator
 
 lower# ... upper#
 

 Exclusive Range
 use the "half-open" operator
 
 lower# ..< upper#
 **/

//  print a random # from 1 to 3, including 1 and 3
let randomNumber = Int.random(in: 1 ... 3)
//  print a random # from 1 to 3, NOT including 3
let randomNumber2 = Int.random(in: 1 ..< 3)
print(randomNumber)
print(randomNumber2)
