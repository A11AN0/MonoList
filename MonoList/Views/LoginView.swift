//
//  LoginView.swift
//  MonoList
//
//  Created by Allan Odunga on 4/11/2023.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            //Header
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(.mint)
                    .rotationEffect(Angle(degrees: 15))
                    
                
                VStack {
                    Text("MonoList")
                        .font(.system(size: 50))
                        .foregroundColor(.white)
                        .bold()
                    Text("Productivity turbocharged")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .fontWeight(.light)
                }
                .padding(.top, 30)
            }
            .frame(width: UIScreen.main.bounds.width * 3, height: 300)
            .offset(y: -100)
            Spacer()
            
            //Actual Login Form
            
            //Footer/Sign-up nav link
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
