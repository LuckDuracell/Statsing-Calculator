//
//  PrimaryButton.swift
//  Statsing Calculator
//
//  Created by Luke Drushell on 10/13/22.
//

import SwiftUI

struct PrimaryButton: View {
    
    let text: String
    let width = UIScreen.main.bounds.width
    
    var body: some View {
        Text(text)
            .frame(width: width * 0.4, height: width * 0.25)
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

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            BG()
            PrimaryButton(text: "Inverse Norm")
                .preferredColorScheme(.dark)
        }
    }
}
