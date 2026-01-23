//
//  MenuView.swift
//  restaurant
//
//  Created by Tatiana6mo on 1/16/26.
//

import SwiftUI

struct MenuView: View {
    
    // var  and const
    @State private var showMessage = false
    @State private var showAfforable = false
    @State private var showDessert = false
    @State private var showPremium = false
    
    // dictionary
    //[key,value]
    let menu: [String: Double] = [
        "Spaghetti": 12.99,
        "Fettuccine": 15.99,
        "Lasagna": 14.75,
        "Risotto": 13.50,
        "Tacos": 8.00,
        "Steak": 9.99,
        "Salad": 6.75
    ]
    
    
    // computer proprties
    // do not store a value
    // each access recompute the value
    
    // syntax
    /*
     var propertyName: Type {
     return a calculated value
     }
     */
    
    // Computed property 1 : sorted
    var sortedMenu: [(name: String, price: Double)] {
        menu
            .sorted{ $0.key < $1.key }
        //Array of (key, value)
            .map{ (name: $0.key, price: $0.value) }
        //rename tuple elements
    }
    
    var filteredMeun: [(name: String, price: Double)] {
        if showDessert {
            return sortedMenu.filter { $0.price < 10 }
        }else if showPremium {
            return sortedMenu.filter { $0.price > 10 }
        }else {
            return sortedMenu
        }
    }
    
    
    
    
    //computed property 2: display affordables
    var displayedMenu: [(name: String, price: Double)]{
        if showAfforable {
            return sortedMenu.filter { $0.price < 10 }
        }else{
            return sortedMenu
        }
        
    }
    
    var displayedPremiums: [(name: String, price: Double)]{
        if showPremium {
            return sortedMenu.filter { $0.price > 10 }
        }else if showAfforable {
            return sortedMenu.filter { $0.price < 10 }
        }else{
            return sortedMenu
        }
        
        
    }
    
    // computed propery 3 : average
    var avergePrice: Double {
        let prices = filteredMeun.map{ $0.price }
        guard !prices.isEmpty else { return 0 }
        return prices.reduce(0, +) / Double(prices.count)
    }
    
    func getTotalItems() -> Int {
        filteredMeun.count
    }
    
    func getHighestPrice() -> Double {
        var highest = 0.0
        for item in displayedMenu {
            if item.price > highest {
                highest = item.price
            }
        }
        return highest
    }
    
    func getLowestPrice() -> Double {
        var lowest = Double
            .greatestFiniteMagnitude
        for item in sortedMenu {
            if item.price < lowest {
                lowest = item.price
            }
            
        }
        return lowest
    }
    
    
    
    var body: some View {
        // 1. convert dic into a sorted array
        // let soredMenu = menuItem. sorted { $0. key < $1.key }
        VStack {
            VStack{
                //HEADER
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height:130)
                Text("Today's menu")
                    .font(.title2)
                    .bold()
            }
            
            VStack {
                Toggle("Show welcome message", isOn: $showMessage)
                Toggle("Show only affordable items (under $10)", isOn: $showAfforable)
                Toggle("Show only Premium (>10)", isOn: $showPremium)
                
                
                
                
            }
            .padding()
            
            if showMessage {
                Text("Welcome to SunRise Restaurant!")
                    .font(.headline)
                    .foregroundColor(Color.blue)
                    .padding(.horizontal)
            }
            
            List{
                Section(
                    header: Text("Showing \(getTotalItems()) items")
                ){
                    ForEach(filteredMeun, id: \.name) { item in
                        MeunItemRowView(name:item.name, price: item.price)
                        
                    }
                    
                }
                
                Button("DessertView") {
                    showDessert = true
                }
                .foregroundColor(.blue)
                .sheet(isPresented:$showDessert) {
                    DessertView()
                }
                .padding()
                .background(Color.green.opacity(0.2))
            }
            
            //footer|
            
            
            //        Section{
            VStack{
                HStack{
                    Text("Total items: \(getTotalItems())")
                }
                
                HStack{
                    Text("Highest: $\(getHighestPrice(),specifier:"%.2f")")
                }
                
                HStack{
                    Text("Lowest: $\(getLowestPrice(),specifier:"%.2f")")
                }
            }
        }
        
    }
    
}


#Preview {
    MenuView()
}
