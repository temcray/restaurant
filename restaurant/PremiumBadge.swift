//
//  PremiumBadge.swift
//  restaurant
//
//  Created by Tatiana6mo on 1/20/26.
//

import SwiftUI

struct PremiumBadge: View {
    var body: some View {
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

#Preview {
    PremiumBadge()
}
