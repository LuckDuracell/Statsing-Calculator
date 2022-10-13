//
//  UnitLabel.swift
//  Statsing Calculator
//
//  Created by Luke Drushell on 10/12/22.
//

import SwiftUI

struct UnitLabel: View {
    
    let unit: Int
    let subject: String
    let icon: String
    let invert: Bool
    
    var body: some View {
        HStack {
            Text("Unit \(unit):")
                .font(.title3.bold())
            Text(subject)
                .font(.headline)
            Spacer()
            if invert {
                Rectangle()
                    .frame(width: 30, height: 30)
                    .cornerRadius(5)
                    .overlay(content: {
                        BG()
                            .overlay(content: {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .background(.thinMaterial)
                                    .edgesIgnoringSafeArea(.all)
                                    .mask({
                                        Image(systemName: icon)
                                            .font(.title2)
                                    })
                            })
                            .mask({
                                Image(systemName: icon)
                                    .font(.title2)
                            })
                    })
                    .padding(.vertical, -5)
            } else {
                Image(systemName: icon)
                    .font(.title)
            }
        } .padding()
            .background(.thinMaterial)
            .cornerRadius(17)
            .foregroundColor(.white)
    }
}

struct UnitLabel_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            UnitLabel(unit: 2, subject: "Two-Variable Data", icon: "chart.xyaxis.line", invert: true)
        } .preferredColorScheme(.dark)
    }
}
