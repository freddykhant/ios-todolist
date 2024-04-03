//
//  User.swift
//  ios-todolist
//
//  Created by Freddy Khant on 25/3/2024.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
