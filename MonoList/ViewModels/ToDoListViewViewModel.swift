//
//  ToDoListViewViewModel.swift
//  MonoList
//
//  Created by Allan Odunga on 4/11/2023.
//

import Foundation

//Viewmodel for the whole list of items (primary tab)
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    init() {}
    
    func delete(id: String) {
        //delete toDoListItem from firebase collection
    }
}
