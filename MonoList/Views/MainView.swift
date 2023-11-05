//
//  ContentView.swift
//  MonoList
//
//  Created by Allan Odunga on 31/10/2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            NavigationView {
                LoginView()
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
