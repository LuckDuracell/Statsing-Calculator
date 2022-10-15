//
//  InvNorm.swift
//  Statsing Calculator
//
//  Created by Luke Drushell on 10/14/22.
//

import SwiftUI
import StatKit

struct InvNorm: View {
    
    @State var area: Double = 1
    @State var sd: Double = 1
    @State var mean: Double = 2
    
    @State var leftCutoff: Double = 0.000951
    
    @FocusState var showKeyboard: Bool
    
    @State var showResult = false
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Normal CDF")
                    .font(.title3.bold())
                Text("A Tool for Calculating what Percentage of a Dataset lies within a Range of Values")
            } .padding(.vertical)
            VStack {
                if leftCutoff != 0.000951 {
                    Text("\(leftCutoff) // \(leftCutoff.formatted(.percent))")
                }
                Text("normalcdf(\(area.formatted(.number)), \(mean.formatted(.number)), \(sd.formatted(.number)), LEFT)")
            }
                .padding()
                .frame(width: UIScreen.main.bounds.width * 0.8 ,height: 80)
                .background(.regularMaterial)
                .cornerRadius(20)
                .padding()
            Divider()
            VStack(spacing: 5) {
                TextField("Area", value: $area, format: .number)
                    .valueBox()
                    .textBoxTitle("Area")
                    .focused($showKeyboard)
                TextField("Mean (μ)", value: $mean, format: .number)
                    .valueBox()
                    .textBoxTitle("Mean Center (μ)")
                    .focused($showKeyboard)
                TextField("Standard Deviation (σ)", value: $sd, format: .number)
                    .valueBox()
                    .textBoxTitle("Standard Deviation (σ)")
                    .focused($showKeyboard)
            }
            Spacer()
            Button {
                let dist = NormalDistribution(mean: mean, standardDeviation: sd)
                withAnimation {
                    
                }
                
            } label: {
                SecondaryButton(text: "Calculate")
            }
            Spacer()
        }
        .toolbar(content: {
            ToolbarItemGroup(placement: .keyboard, content: {
                Button {
                    showKeyboard.toggle()
                } label: {
                    Text("Done")
                }
            })
        })
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct InvNorm_Previews: PreviewProvider {
    static var previews: some View {
        InvNorm()
    }
}
