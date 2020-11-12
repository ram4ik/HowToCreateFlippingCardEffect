//
//  Card.swift
//  HowToCreateFlippingCardEffect
//
//  Created by ramil on 12.11.2020.
//

import SwiftUI

struct Card: View {
    
    var title: String = ""
    var description: String = ""
    var icon: String = ""
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.pink]), startPoint: .topTrailing, endPoint: .bottomLeading))
            .frame(width: 350, height: 250)
            .shadow(color: .black, radius: 5, x: 2, y: 2)
            .overlay(
                VStack {
                    Image(icon)
                        .resizable()
                        .frame(width: 150, height: 150, alignment: .center)
                        .aspectRatio(contentMode: .fit)
                    Text(title)
                        .font(.title2)
                        .foregroundColor(.white)
                }
            )
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card()
    }
}
