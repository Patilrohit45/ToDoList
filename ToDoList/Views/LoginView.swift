//
//  LoginView.swift
//  ToDoList
//
//  Created by Rohit Patil on 29/06/23.
//

import SwiftUI

struct LoginView: View {
 @StateObject var viewModel = LoginViewModel()
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView(title: "To Do List", subtitle: "Get things done", angle: 15, background: .pink)
                
                //Login Form
                
                Form{
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    TextField("Email Address",text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        
                    SecureField("Password",text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                
                    TLButton(title: "Log In",
                             background: .blue) {
                        viewModel.login()
                    }
                    .padding()
                    .frame(height:70)
                }
                .offset(y: -50)
                //Create Account
                
                VStack{
                    Text("New around here?")
                    NavigationLink("Create An Account") {
                        RegisterView()
                    }
                   
                }
                .padding(.bottom,50)
                
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LoginView()
                .preferredColorScheme(.dark)
        }
    }
}
