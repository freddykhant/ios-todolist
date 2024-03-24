//
//  RegisterView.swift
//  ios-todolist
//
//  Created by Freddy Khant on 25/3/2024.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Register", subtitle: "Start organizing your list", angle: -15, background: .cyan)
        }
    }
}

#Preview {
    RegisterView()
}
