//
//  main.swift
//  Dictionaries
//
//  Created by Andrew Harris on 9/7/21.
//

//  This small program shows how to create a dictionary for storing
//  key: value pairs, and how to iterate over and display
//  the contents of the array.

import Foundation

print("Here is a simple dictionary containing the names of")
print("publicly-held companies and their stock symbols.")
print("")

func exercise() {
    
    //Don't change this
    var stockTickers: [String: String] = [
        "APPL" : "Apple Inc",
        "HOG": "Harley-Davidson Inc",
        "BOOM": "Dynamic Materials",
        "HEINY": "Heineken",
        "BEN": "Franklin Resources Inc",
        "WORK": "Slack Technologies Inc",
        "ZG": "Zillow Group",
    ]
    //print individual entries
    print("Printing individual entries:")
    print(stockTickers["WORK"]!)
    print(stockTickers["BOOM"]!)
    print("")
    print("Iterating through the entire collection:")
    for (key, value) in stockTickers {
        print("\(key): \(value)")
    }
}
exercise()
