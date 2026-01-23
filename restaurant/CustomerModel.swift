//
//  CustomerModel.swift
//  restaurant
//
//  Created by Tatiana6mo on 1/22/26.
//

import Foundation


class Customer: Identifiable {
    let id = UUID() // analogy-  we addes ssn to the elements
    var name:String
    var email:String
    var visits:Int
    
    
    init(name:String,email:String,visits:Int){
        self.name = name
        self.email = email
        self.visits = visits
        }
    
    func summary() -> String{
        ("\(name) - visits \(visits)")
    }
}
