//
//  User.swift
//  MonoList
//
//  Created by Allan Odunga on 4/11/2023.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
