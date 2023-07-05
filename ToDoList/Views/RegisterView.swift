//
//  RegisterView.swift
//  ToDoList
//
//  Created by Rohit Patil on 29/06/23.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewModel()
    var body: some View {
        VStack{
            HeaderView(title: "Register", subtitle: "Start organizing todo's", angle: -15, background: .orange)
            
            Form{
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .disableAutocorrection(true)
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Create Account",
                         background: .green) {
                    //Attempt to register
                    viewModel.register()
                }
                .padding()
                .frame(height:70)
                
            }
            .offset(y:-50)
            
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
            .preferredColorScheme(.dark)
    }
}
