//
//  ToDoListItem.swift
//  MonoList
//
//  Created by Allan Odunga on 4/11/2023.
//

import Foundation

struct ToDoListItem: Codable, Identifiable {
    let id:String
    let title:String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state: Bool) {
        isDone = state
    }
}
