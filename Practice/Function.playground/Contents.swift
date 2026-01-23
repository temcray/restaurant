import UIKit

func printWelcome() {
    print("Welcome")
}
printWelcome()

//----Ex----|
func greet(person: String) -> String {
    let greeting = "Hello" + person
    return greeting
}

// call the function

let message = greet(person: "Taylor")
print(message)


//----EX----|
func add(num1: Int, num2:Int) -> Int {
    
    
    
    
    return num1 + num2
}
let result = add(num1: 23, num2: 12)
print("The addition is \(result)")

func multiply(_ x: Int,_ y: Int) -> Int {
    return x*y
}
print(multiply(3,5))

//----Ex ---|
func deliveryTime(min: Int) -> String {
    return "Ready in \(min) minutes. "
}
let message2 = deliveryTime(min:60)
print(message2)


func welcomeStudent(greeting: String) -> String {
    return "Ready to learn"
}




/* MiniChallenge
 1.  Define a function called welcomeStudent.
 2.  The function should take one parameter: name of type String.
 3.  The function should return a String.
 4.  Inside the function, build a message like: "Welcome, [name]! Ready to learn Swift?".
 5.  Call the function with a sample name and print the result.
*/




/*
    Syntax
 
    func funcionName(parameter1: Type, parameter2: Type) -> ReturnType {
        // function body
        // logic goes here
 
        return value
 
 
 
    }
 
 */


