//
//  ProfileView.swift
//  MonoList
//
//  Created by Allan Odunga on 4/11/2023.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                
                if let user = viewModel.user {
                    userProfile(user: user)
                    //Sign out
                    TLButton(title: "Log out", backgroundColor: .red) {
                        viewModel.logOut()
                    }
                    .frame(width: 200, height: 45)
                } else {
                    Text("Loading profile...")
                }
                
                Spacer()
                
            }
            .navigationTitle("Profile")
        }
        .onAppear {
            viewModel.fetchUser()
        }
    }
}

@ViewBuilder
func userProfile(user: User) -> some View {
    //Avatar
    Image(systemName: "person.circle")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .foregroundColor(.blue)
        .frame(width: 125, height: 125)
    
    //Info: Name, email, member since
    VStack(alignment: .leading) {
        HStack {
            Text("Name: ")
                .fontWeight(.bold)
                .padding()
            
            Text(user.name)
        }
        HStack {
            Text("Email:")
                .fontWeight(.bold)
                .padding()
            Text(user.email)
        }
        HStack {
            Text("Member Since:")
                .fontWeight(.bold)
                .padding()
            Text("\( Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: . shortened))")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
