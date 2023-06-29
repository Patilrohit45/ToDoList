//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Rohit Patil on 29/06/23.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoListApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
