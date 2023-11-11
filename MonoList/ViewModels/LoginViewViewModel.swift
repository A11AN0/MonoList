//
//  LoginViewViewModel.swift
//  MonoList
//
//  Created by Allan Odunga on 4/11/2023.
//

import Foundation


class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login() {
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errorMessage = "Please fill in all fields"
            return
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter a valid email"
            return
        }
        
        //Just here for testing for now
        print("valid")
    }
    
    
}
