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
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "To Do List", subtitle: "Get Things Done", angle: 15, background: .mint)
                
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
                            
                            Text("Log In")
                                .foregroundColor(.white)
                                .bold()
                        }
                    }
                }
                .padding()
                .offset(y:-50)
                
                // Create account
                VStack {
                    Text("New here?")
                    
                    NavigationLink("Create An Account",
                                   destination: RegisterView())
                }
                //.padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
