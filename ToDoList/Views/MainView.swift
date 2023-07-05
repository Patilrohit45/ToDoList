//
//  ContentView.swift
//  ToDoList
//
//  Created by Rohit Patil on 29/06/23.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn,!viewModel.currentUserId.isEmpty {
            //signed in
            ToDoListView()
        }else {
            LoginView()
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
