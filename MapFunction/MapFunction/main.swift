//
//  main.swift
//  MapFunction
//
//  Created by Andrew Harris on 8/24/21.
//
//This file is a scratch for playing with
//the built in .map() function.


// create an array
var numbers = [1, 2, 3, 4, 5]
//call the .map() method
//here we can use the .map() method to
//perform many scalar operations on
//our list
//thanks to hackingwithswift.com and cocoacasts.com
//for the examples

//playing with numbers
let doubled = numbers.map{$0 * 2}
let add = numbers.map{$0 + 2}
let minus = numbers.map{$0 - 2}

//playing with strings
let strings = ["john", "paul", "george", "ringo"]
let uppercased = strings.map{$0.uppercased()}

print("Here is some console output for my map learning...")
print()
print()
print("Original array: ", numbers)
print()
print("After calling .map() on array:")
print("* 2: ", doubled)
print()
print("+ 2: ", add)
print()
print("- 2: ", minus)
print()
print("uppercased(): ", uppercased)


//more fun with .map()

//here we are going to use .map to recaste
//our array to a new data type

//create an array of strings

let example = ["one", "three", "four", "sixteen"]

//now i want to create an array of the char counts
//for each element in the array.
//we have three ways we can do this syntactically
//and they're all correct

//most explicit:
//let ints0 = example.map { (String) -> Int in
//    return example.count
//}
//less so, since there is ony one argument, the return
//statement is uneccessary
//let ints1 = example.map { (String) -> Int in
//    example.count
//}


//most succinct
let ints2 = example.map {$0.count}

print()
print()
print("more array transformations using .map()")
print("Original Array: ", example)
print(ints2)


