//
//  LoginView.swift
//  MonoList
//
//  Created by Allan Odunga on 4/11/2023.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            //Header
            HeaderView()
            Spacer()
            
            //Actual Login Form
            Form {
                TextField("Email Address", text:$email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button {
                    //action to login goes here
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                        Text("Login")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                    }
                    
                }
            }
            
            
            //Footer/Sign-up nav link
            VStack {
                Text("First time?")
                
                Button ("Create account") {
                    //Go to registration view
                }
            }
            .padding(.bottom, 50)
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
