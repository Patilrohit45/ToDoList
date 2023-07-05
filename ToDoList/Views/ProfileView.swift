//
//  ProfileView.swift
//  ToDoList
//
//  Created by Rohit Patil on 29/06/23.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack{
                //Avatar Image
                Image(systemName: "person.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.blue)
                    .frame(width:125,height: 125)
                
                //Info:Email,Name,Member Since
                VStack(alignment:.leading){
                    HStack{
                        Text("Name: ")
                        Text("Rohit Patil")
                    }
                    HStack{
                        Text("Email: ")
                        Text("rohit@gmail.com")
                    }
                    HStack{
                        Text("Member Since: ")
                        Text("Rohit Patil")
                    }
                }
                //Sign Out
                TLButton(title: "Log Out", background: .red) {
                    viewModel.logOut()
                }
            }
            .navigationTitle("Profile")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
