//
//  MeunItemRowView.swift
//  restaurant
//
//  Created by Tatiana6mo on 1/20/26.
//

import SwiftUI

struct MeunItemRowView: View {
    let name: String
    let price: Double
    
    var body: some View {
        HStack {
            Text(name)
                .font(.headline)
            Spacer()
            Text("$\(price, specifier: "%.2f")")
                .font(.headline)
            
            if price > 10 {
                HStack {
                    
                    Image(systemName:"star.fill")
                        .foregroundColor(.yellow)
                    
                    Text("Premium")
                        .font(.caption)
                    
                }
                .padding(8)
                .background(Color.orange.opacity(0.15))
                .cornerRadius(6)
            }
        }
        
    }
}

#Preview {
    MeunItemRowView(name: "Pizza", price: 12.99)
}
