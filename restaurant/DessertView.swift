//
//  DessertView.swift
//  restaurant
//
//  Created by Tatiana6mo on 1/18/26.
//

import SwiftUI

struct DessertView: View {
    //dic
    let desserts = [
        "Chocolate cake": 8.67,
        "Brownie": 7.25,
        "Tiramisu": 6.50,
        "Cheesecake": 9.00
    ]
    var body: some View {
        //1. convert dic into a sorted array
        let sortedMenu = desserts.sorted { $0.value > $1.value }
        
        VStack{
            //header
            VStack{
                Text("Dessert Menu")
                    .scaledToFit()
                    .frame(height:50)
                    .font(.title2)
                    .bold()
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(12)
            
        }
        
        
        //List
        List{
            ForEach(sortedMenu, id: \.key){ name, price in
                HStack{
                    Text(name)
                        .font(.headline)
                    Spacer()
                    Text("$\(price, specifier:"%.2f")")
                        .foregroundColor(.black)
                }
                .padding(.vertical,5)
                
            }
            
        }
        
    }
    
}

#Preview {
    DessertView()
  }
