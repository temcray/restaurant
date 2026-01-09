//
//  AboutView.swift
//  restaurant
//
//  Created by Tatiana6mo on 1/7/26.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10){
            Image(systemName: "sunrise.fill")
                .font(.system(size:50))
                .foregroundColor(.yellow)
            Text("Welcome to Sunrise Cuisine")
                .bold(true)
                .foregroundColor(.green)
                .font(.system(size:20))
            Text("Welcome to Sunrise Cuisine where we make the best Italian pastas, for instant we have Classic Roman Spaghetti, Fettuccine Alfredo(Italian-Style), Penne alla Vodka and more. This restaurant is family-friendly,and all are welcome to Sunrise Cuisine.")
            Text("SwiftUI Layout")
                .font(.subheadline)
                .foregroundColor(.white.opacity(0.8))
            Image(systemName: "person.2.fill")
                .font(.system(size:30))
                .foregroundColor(.green.opacity(0.8))
            
        }
        .padding(20)
        Image(systemName: "fork.knife.spoon")
            .font(.system(size:30))
            .foregroundColor(.yellow)
    }
}

#Preview {
    AboutView()
}
