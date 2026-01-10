//
//  ReservationForm.swift
//  restaurant
//
//  Created by Tatiana6mo on 1/8/26.
//

import SwiftUI

struct ReservationForm: View {
    //Contstants
    let restaurantName = "Sunrise Cuisine"
    let maxGuest = 10
    
    //variables
    @State private var userName = ""
    @State private var guestCount = 1
    @State private var childrenCount = 0
    @State private var occasion = ""
    @State private var phoneNumber = ""
    @State private var previewText = ""
    @State private var date = Date()
    var body: some View {
        
        Form{
            //Header
            Section{
                Text(restaurantName)
                    .font(.title3)
                    .bold()
                Text("Reservation form")
                    .foregroundColor(.secondary)
                
            }
            
            Section(header: Text("Reseration details")){
                TextField("Name",text:
                            $userName)
                    .textInputAutocapitalization(.words)
                    .autocorrectionDisabled(true)
                //use a costant
                Stepper("Guests: \(guestCount)", value: $guestCount, in: 1...maxGuest)
                Stepper("Children: \(childrenCount)", value: $childrenCount, in:
                    0...5)
                //add another TextField to get the phone number
                //1. add the view
                //2. create the state var
                //3. add modifiers
                TextField("Phone:", text: $phoneNumber)
                    .keyboardType(.numberPad)
                TextField("Occasion (e.g. Birthday, Anniversary", text: $occasion)
                    .textInputAutocapitalization(.words)
                    .disableAutocorrection(true)
                
                DatePicker(
                    "Date",
                    selection: $date,
                    displayedComponents: .date
                )
                    
        
                
                Button("Preview reservation"){
                    previewText = """
                        Name: \(userName)
                        Guest: \(guestCount)
                        Phone: \(phoneNumber)
                        """
                }
                
                
                
            }
            Section(header: Text("Preview")){
                Text(previewText)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                    .textSelection(.enabled)
            }
        }
    }
}

#Preview {
    ReservationForm()
}
