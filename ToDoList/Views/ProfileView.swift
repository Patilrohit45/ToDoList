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
                if let user = viewModel.user{
                    profile(user:user)
                }else{
                    Text("Loading Profile...")
                }
            }
            .navigationTitle("Profile")
        }
        .onAppear {
            viewModel.fetchUser()
        }
    }
    @ViewBuilder
    func profile(user:User) -> some View{
        //Avatar Image
        Image("AddProfile")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(Color.blue)
            .clipShape(Circle())
            .frame(width:125,height: 125)
            .padding()
        
        //Info:Email,Name,Member Since
        VStack(alignment:.leading){
            HStack{
                Text("Name: ")
                    .bold()
                Text(user.name)
            }
            .padding()
            HStack{
                Text("Email: ")
                    .bold()
                Text(user.email)
            }
            .padding()
            HStack{
                Text("Member Since: ")
                    .bold()
                Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
            }
            .padding()
        }
        .padding()
        //Sign Out
        TLButton(title: "Log Out", background: .red) {
            viewModel.logOut()
        }
        .padding()
        .frame(height:70)
        
        Spacer()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
