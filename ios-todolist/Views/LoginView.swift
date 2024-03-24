//
//  LoginView.swift
//  ios-todolist
//
//  Created by Freddy Khant on 25/3/2024.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    
    var body: some View {
        VStack {
            // Header
            HeaderView()
            
            // Login Form
            Form {
                TextField("Email Address", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button {
                    // Attempt login
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.blue)
                        
                        Text("Log In")
                            .foregroundColor(.white)
                            .bold()
                    }
                }
            }
            
            // Create account
            VStack {
                Text("New here?")
                Button("Create an account") {
                    // Show registration
                }
            }
            //.padding(.bottom, 50)
            
            Spacer()
        }
    }
}

#Preview {
    LoginView()
}
