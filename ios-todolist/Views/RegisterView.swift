//
//  RegisterView.swift
//  ios-todolist
//
//  Created by Freddy Khant on 25/3/2024.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Register",
                       subtitle: "Start organizing your list",
                       angle: -15,
                       background: .cyan)
            
            // Login Form
            Form {
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Create Account", background: .green) {
                    viewModel.register()
                }
                .padding()
            }
            .offset(y:-50)
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
