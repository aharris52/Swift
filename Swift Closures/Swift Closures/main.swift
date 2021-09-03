//
//  main.swift
//  Swift Closures
//
//  This console program is for better understanding
//  the syntax and application of closures in the
//  the Swift programming language.
//
//Each statemnt produces the same output. Each satement
//is made even more succinct as you go down the page.
//
//  Created by Andrew Harris on 8/27/21.
//

import Foundation

func calculator(n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1, n2)
}

func add(no1: Int, no2: Int) -> Int {
    return no1 + no2
}

print("The following output is created using different syntax for each output.")
print("This is so that we can more easily see the changes in syntax and the ")
print("the trade-offs in readability that come with brevity.")
print()
print(calculator(n1: 2, n2: 3, operation: add(no1:no2:)))

//  FIRST WAY:
//  the same f(x) converted to a closure:
//
//  {(no1: Int, no2: Int) -> Int in
//      return no1 + no2
//  }
print(calculator(n1: 2, n2: 3, operation: {(no1: Int, no2: Int) -> Int in
    return no1 + no2
}))

//  SECOND WAY:
//  Using type inference we can eliminate the
//  data type declarations in our expression.
//  We can also remove the return key word in
//  our closures, further abbreviating our code.
//
//{(no1, no2) in
//      no1 + no2
//}
print(calculator(n1: 2, n2: 3, operation: { (no1, no2) in no1 + no2
}))
 
// THIRD WAY:
//  We can also utilize anonymous parameter names
//  using the $0, $1, ...$n
print(calculator(n1: 2, n2: 3, operation: { $0 + $1 }))


//  FOURTH WAY:
//  We can abbreviate even further by using a trailing closure.
//  This syntax can be used when the last parameter is defined as
//  closure.
print(calculator(n1: 2, n2: 3) { $0 + $1 })
