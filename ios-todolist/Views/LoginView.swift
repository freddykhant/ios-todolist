//
//  LoginView.swift
//  ios-todolist
//
//  Created by Freddy Khant on 25/3/2024.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "To Do List", subtitle: "Get Things Done", angle: 15, background: .mint)
                 
                // Login Form
                Form  {
                    TextField("Email Address", text:
                        $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    
                    SecureField("Password", text:
                        $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(
                        title: "Log In",
                        background: .blue
                    ) {
                        viewModel.login()
                    }
                    .padding()
                }
                .offset(y:-50)
                
                // Create account
                VStack {
                    Text("New here?")
                    
                    NavigationLink("Create An Account",
                                   destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
