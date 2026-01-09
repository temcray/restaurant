//
//  ContentView.swift
//  restaurant
//
//  Created by Tatiana6mo on 1/7/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "sunrise.fill")
                .font(.system(size:50))
                .foregroundStyle(.yellow)
            Text("Welcome to my restaurant Sunrise!")
                .font(.title2)
                .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
