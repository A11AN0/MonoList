//
//  LoginViewViewModel.swift
//  MonoList
//
//  Created by Allan Odunga on 4/11/2023.
//

import Foundation
import FirebaseAuth


class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login() {
        
        //Try validating - if can't validate - then return
        guard validate() else {
            return
        }
        
        //Attempt login with firebase
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    func validate() -> Bool {
        errorMessage = ""
        
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errorMessage = "Please fill in all fields."
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter a valid email."
            return false
        }
        
        return true
    }
    
    
}
