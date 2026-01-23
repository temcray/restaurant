import UIKit

// ----ARRAYS ----|

let dish = ["Spaghetti", "Pizza", "Pasta"]

print(dish[0])// access to the data
print(dish[1])

// creating a mutable array

var orders = [String]()
orders.append("Spaghetti")
orders.append("Pizza")

print(orders)

// ---Dictionaries --
let menuPrice = [
    "Spaghetti": 12.99,
    "Pizza": 15.99,
    "Pasta": 13.99
]

print(menuPrice["Spaghetti"]!)

// challenge 1 - create a dic for drinks.|

let drinks = [
    "Coffee": 3.99,
    "Tea": 4.99,
    "Juice": 2.99
]

print("Coffee price:", drinks["Coffee"]!)

// foreach

let fruites = [
    "Apple": 0.99,
    "Banana": 0.59,
    "Orange": 1.29
]

fruites.forEach{ fruites, price in
    if price > 1 {
        print("\(fruites): $\(price)")
    }

    
}


// CHALLENGE 2 - PRINT ALL THE DRINKS USING FOREACH|

drinks.forEach{ drink, price in
    print("\(drink): $\(price)")
}
