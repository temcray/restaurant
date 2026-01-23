import UIKit


/*
    OOP
 
 A class is used to define custom type of elements, it groups properties and behaviors (methods)
 It acts as a blueprint for creating objects
 
 --- SYNTAX ---
 
 class ClassName {
    var propertyName1: DataType
    var propertyName2: DataType
 
    init(propertyName1: DataType,propertyName2: DataType){
        self.propertyName1 = propertyName1
        self.propertyName2 = propertyName2
    }
    func functionName() -> ReturnType{
        return ...
    }
 }
 
*/


class Dog {
    var name: String
    var age: Int
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
    func bark() {
        print("\(name) say woof!")
    }
}

let dog1 = Dog(name: "Max", age: 3)

dog1.bark()

class Customer{
    var name:String
    var email:String
    var visits:Int
    var phoneNumber: String
    
    init(name:String,email:String,visits:Int, phoneNumber: String){
        self.name = name
        self.email = email
        self.visits = visits
        self.phoneNumber = phoneNumber
    }
    func greeting() -> String{
        return "Welcome back, \(name)"
    }
    func addVisit(){
        visits += 1
    }
    
    func summary(){
        print("\(name) - visits \(visits)")
    }
}
    
    let customer1 = Customer(
        name: "John",
        email: "john@example.com",
        visits: 3,
        phoneNumber: "555-1234"
    )
    
    let customer2 = Customer(
        name: "Jane",
        email: "jane@example.com",
        visits: 1,
        phoneNumber: "555-5678"
    )
    
    print(customer1.greeting())
    customer1.addVisit()
    customer1.addVisit()
    customer1.addVisit()
    customer1.summary()
    
    print(customer2.greeting())
    customer2.summary()



