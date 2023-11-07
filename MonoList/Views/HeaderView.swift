//
//  HeaderView.swift
//  MonoList
//
//  Created by Allan Odunga on 5/11/2023.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
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
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
