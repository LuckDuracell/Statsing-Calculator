//
//  Unit1Hub.swift
//  Statsing Calculator
//
//  Created by Luke Drushell on 10/13/22.
//

import SwiftUI

struct Unit1Hub: View {
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
                        
                    }, label: {
                        PrimaryButton(text: "Normal CDF")
                    })
                }
                HStack {
                    NavigationLink(destination: {
                        
                    }, label: {
                        PrimaryButton(text: "Inverse Norm")
                    })
                    NavigationLink(destination: {
                        
                    }, label: {
                        PrimaryButton(text: "Normal CDF")
                    })
                }
                HStack {
                    NavigationLink(destination: {
                        
                    }, label: {
                        PrimaryButton(text: "Inverse Norm")
                    })
                    NavigationLink(destination: {
                        
                    }, label: {
                        PrimaryButton(text: "Normal CDF")
                    })
                }
            }
        }
    }
}

struct Unit1Hub_Previews: PreviewProvider {
    static var previews: some View {
        Unit1Hub()
            .preferredColorScheme(.dark)
    }
}
