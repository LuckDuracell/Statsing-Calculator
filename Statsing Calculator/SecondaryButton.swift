//
//  SecondaryButton.swift
//  Statsing Calculator
//
//  Created by Luke Drushell on 10/14/22.
//

import SwiftUI

struct SecondaryButton: View {
    
    let text: String
    let width = UIScreen.main.bounds.width
    
    var body: some View {
        Text(text)
            .frame(width: width * 0.9, height: width * 0.15)
            .background(
                .regularMaterial
            )
            .overlay(content: {
                ZStack {
                    Rectangle()
                        .fill(RadialGradient(colors: [.clear, .white.opacity(0.2)], center: .center, startRadius: 5, endRadius: 90))
                    Text(text)
                        .foregroundColor(.white)
                }
            })
            .cornerRadius(15)
            .padding()
            .shadow(color: .white.opacity(0.2), radius: 5)
            .shadow(color: .white.opacity(0.3), radius: 3)
            .foregroundColor(.white)
    }
}

struct SecondaryButton_Previews: PreviewProvider {
    static var previews: some View {
        SecondaryButton(text: "Calculate")
    }
}
