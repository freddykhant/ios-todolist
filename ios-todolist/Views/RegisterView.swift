//
//  RegisterView.swift
//  ios-todolist
//
//  Created by Freddy Khant on 25/3/2024.
//

import SwiftUI

struct RegisterView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Register", subtitle: "Start organizing your list", angle: -15, background: .cyan)
            
            // Login Form
            Form {
                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TextField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                Button {
                    // Attempt login
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.blue)
                        
                        Text("Sign up")
                            .foregroundColor(.white)
                            .bold()
                    }
                }
            }
            .padding()
            .offset(y:-50)
            
            // Create account
            VStack {
                Text("Already have one?")
                
                NavigationLink("Sign in",
                               destination: LoginView())
            }
            //.padding(.bottom, 50)
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
