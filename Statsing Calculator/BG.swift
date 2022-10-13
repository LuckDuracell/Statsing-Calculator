//
//  BG.swift
//  Statsing Calculator
//
//  Created by Luke Drushell on 10/12/22.
//

import SwiftUI

struct BG: View {
    var body: some View {
        LinearGradient(colors: [.purple, .purple, .green, .pink, .pink], startPoint: .topLeading, endPoint: .bottomTrailing).blur(radius: 55) .scaleEffect(1.5)
            .overlay(content: {
                Color.black.opacity(0.3)
                    .edgesIgnoringSafeArea(.all)
            })
    }
}

struct BG_Previews: PreviewProvider {
    static var previews: some View {
        BG()
    }
}
