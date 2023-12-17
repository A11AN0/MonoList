//
//  ToDoListViewViewModel.swift
//  MonoList
//
//  Created by Allan Odunga on 4/11/2023.
//

import FirebaseFirestore
import Foundation

//Viewmodel for the whole list of items (primary tab)
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    
    //This function will delete the toDoList item
    func delete(id: String) {
        let db = Firestore.firestore()
        //delete toDoListItem from firebase collection
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
            
    }
}
