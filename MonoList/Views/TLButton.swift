//
//  TLButton.swift
//  MonoList
//
//  Created by Allan Odunga on 11/11/2023.
//

import SwiftUI

struct TLButton: View {
    let title:String
    let backgroundColor:Color
    let action: () -> Void
    var textColor = Color.white
    
    var body: some View {
        Button {
            //action to login goes here
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backgroundColor)
                Text(title)
                    .foregroundColor(textColor)
                    .fontWeight(.bold)
            }
            
        }
    }
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        TLButton(title: "Button", backgroundColor: .blue) {
            //Action
        }
    }
}
