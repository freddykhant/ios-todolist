//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Freddy Khant on 25/3/2024.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
