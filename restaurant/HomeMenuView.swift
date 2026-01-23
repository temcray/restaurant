//
//  HomeMenuView.swift
//  restaurant
//
//  Created by Tatiana6mo on 1/22/26.
//

import SwiftUI

struct HomeMenuView: View {
    var body: some View {
        NavigationStack{
            List{
                NavigationLink("Menu view"){
                    MenuView()
                }
                NavigationLink("Reservations view"){
                    ReservationForm()
                    
                }
                NavigationLink("Customer view"){
                    CustomerView()
                    
                }
            }
        }
    }
}

#Preview {
    HomeMenuView()
}
