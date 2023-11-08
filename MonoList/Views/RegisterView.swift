//
//  RegisterView.swift
//  MonoList
//
//  Created by Allan Odunga on 4/11/2023.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            //Header
            HeaderView(title: "Register", subtitle: "Create your account", angle: -15, background: .blue)
            
            //Form
            Form {
                TextField("Full Name", text:$name)
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("Email Address", text:$email)
                    .textFieldStyle(DefaultTextFieldStyle())
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                Button {
                    //action to login goes here
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                        Text("Register")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                    }
                    
                }
                .padding()
            }
            .scrollContentBackground(.hidden)
            .offset(y: -50)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
