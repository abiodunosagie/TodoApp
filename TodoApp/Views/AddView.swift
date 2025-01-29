//
//  AddView.swift
//  TodoApp
//
//  Created by Abiodun Osagie on 29/01/2025.
//

import SwiftUI

struct AddView: View {
    @State var textFieldText: String = ""
    var body: some View {
        ScrollView {
            VStack {
                //: TEXTFIELD
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(.gray).opacity(0.2))
                    .cornerRadius(10)
                
                //: SAVE BUTTON
                Button {
                    // action
                } label: {
                    Text("Save".uppercased())
                }
                .foregroundColor(.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.accentColor)
                .cornerRadius(10)
            }//: VSTACK
            .padding(10)
        }//: SCROLLVIEW
        .navigationTitle("Add an item ✏️")
        //.navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationView {
        AddView()
    }
    
}
