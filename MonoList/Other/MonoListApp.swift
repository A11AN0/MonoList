//
//  MonoListApp.swift
//  MonoList
//
//  Created by Allan Odunga on 31/10/2023.
//

import SwiftUI
import FirebaseCore

@main
struct MonoListApp: App {
    init () {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
