//
//  ContentView.swift
//  HowToCreateFlippingCardEffect
//
//  Created by ramil on 12.11.2020.
//

import SwiftUI

struct ContentView: View {
    @State var flipped: Bool = false
    @State var flip: Bool = false
    
    var body: some View {
        ZStack {
            Card(title: "SwiftUI", description: "Learning SwiftUI", icon: "logo")
            Card(title: "SwiftUI", description: "Learning SwiftUI", icon: "logo")
        }
        .modifier(FlipEffect(flipped: $flipped, angle: 180))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
