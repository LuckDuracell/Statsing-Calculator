//
//  ContentView.swift
//  Statsing Calculator
//
//  Created by Luke Drushell on 10/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var pages = pageInfoData
    @FocusState var showKeyboard: Bool
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(pages, id: \.self, content: { newPage in
                        NavigationLink(destination: {
                            numToUnitView(unit: newPage.unit, keyboardFocus: _showKeyboard)
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
