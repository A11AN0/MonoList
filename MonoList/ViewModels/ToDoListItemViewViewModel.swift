//
//  ToDoListItemViewViewModel.swift
//  MonoList
//
//  Created by Allan Odunga on 4/11/2023.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

//ViewModel for a single todo-list item view (single row entry in toDoList)
class ToDoListItemViewViewModel: ObservableObject {
    init() {}
    
    func toggleIsDone(item: ToDoListItem) {
        //toggle itemIsDone property
        var itemDuplicate = item
        itemDuplicate.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemDuplicate.id)
            .setData(itemDuplicate.asDictionary())
    }
    
}

