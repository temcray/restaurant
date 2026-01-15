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
    @State private var showMassage = true
    
    //1) label for guest
    func guestlabel(_ count:Int) -> String {
        count == 1 ? "Guest" : "Guests"
    }
    
    func childrenlabel(_ count:Int) -> String {
        count == 1 ? "Child" : "Children"
    }
    
    func estimetion(_ adults:Int, _ children: Int) -> Double{
        let AdultPrice = 15.0
        let ChildPrice = 9.0
        
        return Double(adults) * AdultPrice + Double(children)
    }
    
    //3) estimation function
    // adults 15.00
    // children 9.00
    
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
                if userName.isEmpty {
                    Text("Please enter a name")
                        .font(.footnote)
                        .foregroundColor(.red)
                }
                //use a costant
                Stepper("Guests: \(guestCount)", value: $guestCount, in: 1...maxGuest)
                
                
                
                if guestCount >= 8 {
                    Text("Large group")
                        .font(.footnote)
                        .foregroundColor(.orange)
                }
                    
                Stepper("Children: \(childrenCount)", value: $childrenCount, in:
                    0...5)
                if childrenCount > 0 {
                    Text("kids memu")
                        .font(.footnote)
                        .foregroundColor(.yellow)
                }
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
                    
                Toggle("Show special text", isOn: $showMassage)
                if showMassage {
                    
                    
                    Text("outdoorSteating available")
                        .font(.footnote)
                        .foregroundColor(.blue)
                }
                }
                    
                
                Button("Preview reservation"){
                    previewText = """
                        Name: \(userName)
                        Guest: \(guestCount)
                        Phone: \(phoneNumber)
                        Children: \(childrenCount)
                        Occasion: \(occasion)
                        """
                }.disabled(userName.isEmpty)
                
                
                
            }
            Section(header: Text("Preview")){
                Text(previewText)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                    .textSelection(.enabled)
            }
        Section(header: Text("summary")) {
            VStack{
                HStack {
                    Text("Reservation datils")
                        .font(.headline)
                    Spacer()
                    Image(systemName: "text.document")
                }
                
                HStack { Text ("Name"); Spacer(); Text(userName)}
                HStack { Text ("Guest"); Spacer(); Text("\(guestCount)")}
                HStack { Text ("Children"); Spacer(); Text("\(childrenCount)")}
                
                HStack {
                    Text ("Estimated total")
                    Spacer()
                    Text("$120.00")
                }
                
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
        }
        
        }
        
        }



    


    #Preview {
    ReservationForm()
}
