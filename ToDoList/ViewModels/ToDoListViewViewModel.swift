//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Rohit Patil on 29/06/23.
//

import Foundation
import FirebaseFirestore

//ViewModel for list of items view
//primary tab
class ToDoListViewViewModel:ObservableObject{
    @Published var showingNewItemView = false
    
    private var userId:String
    init(userId:String){
        self.userId = userId
    }

    /// Delete to do list item
    /// - Parameter id: item id to delete
    func delete(id:String){
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
