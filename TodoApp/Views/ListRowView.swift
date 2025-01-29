//
//  ListRowView.swift
//  TodoApp
//
//  Created by Abiodun Osagie on 29/01/2025.
//

import SwiftUI

struct ListRowView: View {
    // MARK: - PROPERTIES
    let item: ItemModel
    
    
    
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .padding(.vertical, 8)
    }
}
#Preview {
    ListRowView(item: ItemModel(title: "This is the first item", isCompleted: false))
}
