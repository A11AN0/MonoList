//
//  LoginView.swift
//  MonoList
//
//  Created by Allan Odunga on 4/11/2023.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                //Header
                HeaderView(title: "MonoList", subtitle: "Productivity turbocharged.", angle: 15, background: .mint)
                
                
                Spacer()
                
                
                
                //Actual Login Form
                Form {
                    //Error Message should go here
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    TextField("Email Address", text:$viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    TLButton(title: "Login", backgroundColor: .mint) {
                        viewModel.login()
                    }
                    .padding()
                }
                .scrollContentBackground(.hidden)
                .offset(y: -50)
                
                
                //Footer/Sign-up nav link
                VStack {
                    Text("First time?")
                    NavigationLink("Create your account", destination: RegisterView())
                }
                .padding(.bottom, 50)
            }
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
