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
                    .autocorrectionDisabled()
                TextField("Email Address", text:$email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                TLButton(title: "Register", backgroundColor: .blue) {
                    print("hi")
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
