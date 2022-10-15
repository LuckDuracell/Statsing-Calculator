//
//  NormalCDF.swift
//  Statsing Calculator
//
//  Created by Luke Drushell on 10/14/22.
//

import SwiftUI
import StatKit

struct NormalCDF: View {
    
    @State var lower: Double = 1
    @State var upper: Double = 3
    @State var sd: Double = 1
    @State var mean: Double = 2
    
    @State var normalCDF: Double = 0.000951
    
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
                if normalCDF != 0.000951 {
                    Text("\(normalCDF) // \(normalCDF.formatted(.percent))")
                }
                Text("normalcdf(\(lower.formatted(.number)), \(upper.formatted(.number)), \(mean.formatted(.number)), \(sd.formatted(.number)))")
            }
                .padding()
                .frame(width: UIScreen.main.bounds.width * 0.8 ,height: 80)
                .background(.regularMaterial)
                .cornerRadius(20)
                .padding()
            Divider()
            VStack(spacing: 5) {
                TextField("Lower", value: $lower, format: .number)
                    .valueBox()
                    .textBoxTitle("Lower Bound")
                    .focused($showKeyboard)
                TextField("Upper", value: $upper, format: .number)
                    .valueBox()
                    .textBoxTitle("Upper Bound")
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
                let rightSide = dist.cdf(x: lower)
                let leftSide = dist.cdf(x: upper)
                withAnimation {
                    normalCDF = abs(rightSide - leftSide)
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

struct NormalCDF_Previews: PreviewProvider {
    static var previews: some View {
        NormalCDF()
    }
}
