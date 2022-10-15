//
//  Extensions and Functions.swift
//  Statsing Calculator
//
//  Created by Luke Drushell on 10/14/22.
//

import SwiftUI
import Foundation

extension View {
    
    func textBox() -> some View {
        modifier(TextBox())
    }
    
    func valueBox() -> some View {
        modifier(ValueBox())
    }
    
    func textBoxTitle(_ text: String) -> some View {
        modifier(TextBoxTitle(title: text))
    }
    
}


struct TextBoxTitle: ViewModifier {
    
    let title: String
    
    func body(content: Content) -> some View {
        VStack {
            HStack {
                Text(title)
                    .font(.caption)
                    .foregroundColor(.gray)
                Spacer()
            } .padding(.leading)
            content
        }
    }
}

struct TextBox: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.regularMaterial)
            .cornerRadius(15)
            .padding()
    }
}

struct ValueBox: ViewModifier {
    func body(content: Content) -> some View {
        VStack {
            content
                .padding()
                .background(.regularMaterial)
                .cornerRadius(15)
                .padding(.horizontal)
                .keyboardType(.decimalPad)
        }
    }
}
