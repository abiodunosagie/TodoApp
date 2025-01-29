//
//  ListView.swift
//  TodoApp
//
//  Created by Abiodun Osagie on 29/01/2025.
//

import SwiftUI

struct ListView: View {
    @State var items: [ItemModel] = [
        ItemModel(title: "This is the first title", isCompleted: false),
        ItemModel(title: "This is the second", isCompleted: true),
        ItemModel(title: "Third!", isCompleted: false),
    ]
    var body: some View {
        List{
            ForEach(items) { item in
                ListRowView(item: item)
            }
        } //: LIST
        
        .navigationTitle("Todo List 📝")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddView())
        )
    }
}

#Preview {
    NavigationView {
        ListView()
            
    }
   
}


