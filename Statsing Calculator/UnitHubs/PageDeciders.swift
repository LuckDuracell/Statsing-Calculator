//
//  PageDeciders.swift
//  Statsing Calculator
//
//  Created by Luke Drushell on 10/13/22.
//

import Foundation
import SwiftUI

let pageInfoData = [UnitInfo(unit: 1, subject: "One-Variable Data", icon: "quote.bubble.fill", invert: false), UnitInfo(unit: 2, subject: "Two-Variable Data", icon: "chart.xyaxis.line", invert: true), UnitInfo(unit: 3, subject: "Collecting Data", icon: "square.and.pencil", invert: true), UnitInfo(unit: 4, subject: "Probability", icon: "die.face.3.fill", invert: false), UnitInfo(unit: 5, subject: "Sampling Distributions", icon: "chart.bar.fill", invert: false), UnitInfo(unit: 6, subject: "Proportional Categoricals", icon: "chart.pie.fill", invert: false), UnitInfo(unit: 7, subject: "Quantatative Data - Means", icon: "list.number.rtl", invert: true), UnitInfo(unit: 8, subject: "Chi Square Proportions", icon: "square.split.2x2.fill", invert: false), UnitInfo(unit: 9, subject: "Quantatative Data - Sloped", icon: "chart.pie.fill", invert: false)]

func numToUnitView(_ unit: Int) -> any View {
    switch unit {
    case 1:
        return Unit1Hub()
    case 2:
        return Unit2Hub()
    case 3:
        return Unit3Hub()
    case 4:
        return Unit4Hub()
    case 5:
        return Unit5Hub()
    case 6:
        return Unit6Hub()
    case 7:
        return Unit7Hub()
    case 8:
        return Unit8Hub()
    case 9:
        return Unit9Hub()
    default:
        return ViewThatFits { Text("Error 01: No View Found for Unit") }
    }
}
