//
//  PageDeciders.swift
//  Statsing Calculator
//
//  Created by Luke Drushell on 10/13/22.
//

import Foundation
import SwiftUI

let pageInfoData = [UnitInfo(unit: 1, subject: "One-Variable Data", icon: "quote.bubble.fill", invert: false), UnitInfo(unit: 2, subject: "Two-Variable Data", icon: "chart.xyaxis.line", invert: true), UnitInfo(unit: 3, subject: "Collecting Data", icon: "square.and.pencil", invert: true), UnitInfo(unit: 4, subject: "Probability", icon: "die.face.3.fill", invert: false), UnitInfo(unit: 5, subject: "Sampling Distributions", icon: "chart.bar.fill", invert: false), UnitInfo(unit: 6, subject: "Proportional Categoricals", icon: "chart.pie.fill", invert: false), UnitInfo(unit: 7, subject: "Quantatative Data - Means", icon: "list.number.rtl", invert: true), UnitInfo(unit: 8, subject: "Chi Square Proportions", icon: "square.split.2x2.fill", invert: false), UnitInfo(unit: 9, subject: "Quantatative Data - Sloped", icon: "chart.pie.fill", invert: false)]

@ViewBuilder
func numToUnitView(unit: Int, keyboardFocus: FocusState<Bool>) -> some View {
    
    
    
    switch unit {
    case 1:
        Unit1Hub(showKeyboard: keyboardFocus)
    case 2:
        Unit2Hub(showKeyboard: keyboardFocus)
    case 3:
        Unit3Hub(showKeyboard: keyboardFocus)
    case 4:
        Unit4Hub(showKeyboard: keyboardFocus)
    case 5:
        Unit5Hub(showKeyboard: keyboardFocus)
    case 6:
        Unit6Hub(showKeyboard: keyboardFocus)
    case 7:
        Unit7Hub(showKeyboard: keyboardFocus)
    case 8:
        Unit8Hub(showKeyboard: keyboardFocus)
    case 9:
        Unit9Hub(showKeyboard: keyboardFocus)
    default:
        Unit1Hub(showKeyboard: keyboardFocus)
    }
}
