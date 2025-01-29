//
//  ItemModel.swift
//  TodoApp
//
//  Created by Abiodun Osagie on 29/01/2025.
//

import Foundation

struct ItemModel: Identifiable{
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
