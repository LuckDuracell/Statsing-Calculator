//
//  ContentView.swift
//  Statsing Calculator
//
//  Created by Luke Drushell on 10/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var pages = pageInfoData
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(pages, id: \.self, content: { newPage in
                        NavigationLink(destination: {
                            switch newPage.unit {
                            case 1:
                                Unit1Hub()
                            case 2:
                                Unit2Hub()
                            case 3:
                                Unit3Hub()
                            case 4:
                                Unit4Hub()
                            case 5:
                                Unit5Hub()
                            case 6:
                                Unit6Hub()
                            case 7:
                                Unit7Hub()
                            case 8:
                                Unit8Hub()
                            case 9:
                                Unit9Hub()
                            default:
                                Text("Error 01: No View Found for Unit")
                            }
                        }, label: {
                            UnitLabel(unit: newPage.unit, subject: newPage.subject, icon:
                                        newPage.icon, invert: newPage.invert)
                        })
                    })
                }
                .padding(10)
            }
            .background(BG())
            .navigationTitle("AP Units")
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading, content: {
                    Text(Date(), format: .dateTime.day().month(.twoDigits).year())
                })
                ToolbarItem(placement: .navigationBarTrailing, content: {
                    Text(Date(), style: .time)
                })
            })
        } .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .tint(.purple)
            .accentColor(.purple)
    }
}


struct UnitInfo: Hashable {
    let unit: Int
    let subject: String
    let icon: String
    let invert: Bool
}
