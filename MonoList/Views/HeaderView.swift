//
//  HeaderView.swift
//  MonoList
//
//  Created by Allan Odunga on 5/11/2023.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let background: Color
    var imageName = ""
    
    
    var body: some View {
        ZStack {
            
            if (imageName.count != 0)
            {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .rotationEffect(Angle(degrees: angle))
            }
            else
            {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(background)
                    .rotationEffect(Angle(degrees: angle))
            }
                
            
            VStack {
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .bold()
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .fontWeight(.light)
            }
            .padding(.top, 80)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y: -150)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Title", subtitle: "Subtitle", angle: 15, background: .indigo)
    }
}
