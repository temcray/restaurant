import UIKit

// if - else if - else

/*
 | ----Syntax--- |
 
 if condition {
 this block will run if condition1 is true
 }else if condition2 {
 this block run if condition is false and condition2 is true
 }else {
 this block run if none of the above condition are true
 }
 */

// |----Example 1 ----|

var guests: Int = 50
let capacity: Int = 10

if guests > capacity {
    print("Over capacity!")
} else {
    print("We can seat this party!")
}


// |----Example ----|

let rating = 3.0

if rating >= 4.5 {
    print("Excellent")
} else if rating >= 3.5 {
    print("Good")
}else {
    print("Needs improvement")
}

//| ----Example 3 Bool ----|
let isOpen = true
let hasOutDoorSeating = true

if isOpen && hasOutDoorSeating {
    print("Open with outdoor seating")
}else if isOpen && !hasOutDoorSeating {
    print("Open indoor only")
}else {
    print("closed")
}

//|----EX 4 capring string ----|

let userName = "Tatiana"

if userName == "Tatiana" {
    print("Welcome, Tatiana")
}else {
    print("unknow user")
}

//|---- Ex 5: Ternary
let price = 12.0
let label = price > 10 ? "Premium" : "Regular"
print(label)


// |---- EX ----|
let children = 0
let groupSize = 5

if groupSize >= 8 {
    print("Large group - call manager")
}else if children > 0 {
    print("Offer kids menu")
}else {
    print("Standard seating")
}

 //|----Minchallenge ----|
 
var isVIP:Bool = false

if isVIP{
    print("Welcome")
}else {
    if !isVIP {
        print("not Welcome")
    }
}
