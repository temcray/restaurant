//
//  CustomerView.swift
//  restaurant
//
//  Created by Tatiana6mo on 1/22/26.
//

import SwiftUI

struct CustomerView: View {
    
    //creating the obj-
    
    var customers: [Customer] = [
        Customer(
        name: "Beyonce",
        email: "Bworld@example.com",
        visits: 3,
        
    ),
    
     Customer(
        name: "Michelle",
        email: "mwilliam@example.com",
        visits: 7,
    
    ),
        
        Customer(
           name: "Kelly",
           email: "kelendria@example.com",
           visits: 2,
       
       ),
        
        Customer(
           name: "Marshall",
           email: "mtmccray@example.com",
           visits: 10,
       
       )
        ]
    
    var body: some View {
        List(customers){ c in
            HStack{
                Text(c.name)
                Spacer()
                Text("\(c.visits)")
                
                if c.visits > 3 {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("Royal Customer")
                        .foregroundColor(.purple)
                }
                
            }
            
        }
        .navigationTitle("Customers title")
        
    
    }
}

#Preview {
    CustomerView()
}
