//
//  Unit1Hub.swift
//  Statsing Calculator
//
//  Created by Luke Drushell on 10/13/22.
//

import SwiftUI

struct Unit1Hub: View {
    
    @FocusState var showKeyboard: Bool
    
    var body: some View {
        ZStack {
            BG()
            VStack {
                HStack {
                    NavigationLink(destination: {
                        
                    }, label: {
                        PrimaryButton(text: "Inverse Norm")
                    })
                    NavigationLink(destination: {
                        NormalCDF(showKeyboard: _showKeyboard)
                    }, label: {
                        PrimaryButton(text: "Normal CDF")
                    })
                }
            } .padding(.horizontal)
        }
    }
}

struct Unit1Hub_Previews: PreviewProvider {
    static var previews: some View {
        Unit1Hub()
            .preferredColorScheme(.dark)
    }
}
