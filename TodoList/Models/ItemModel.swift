//
//  ItemModel.swift
//  TodoList
//
//  Created by Zachary on 8/10/22.
//

import Foundation

struct ItemModel:Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
