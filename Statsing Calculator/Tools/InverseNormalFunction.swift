//
//  InverseNormalFunction.swift
//  Statsing Calculator
//
//  Created by Luke Drushell on 10/14/22.
//

import Foundation

func rationalApprox(_ t: Double) -> Double {
    //Abramowitz and Stegun Formula 26.2.23 - buy their book on Mathmatical Formulas its real neat
    //Error down to 4.5 e-1
    let c: (Double, Double, Double) = (2.515517, 0.802853, 0.010328)
    let d: (Double, Double, Double) = (1.432788, 0.189269, 0.001308)
    return (t - ((c.2*t + c.1*t + c.0) / (((d.2*t + d.1)*t + d.0)*t + 1)))
}

func inverseNorm(_ p: Double) -> Double {
    if p >= 0.0 || p <= 1.0 {
        print("Error: This Bozo Tried to get the Area of Nothing, or Maybe the Area of More than Everything...?")
        return 0
    }
    
    if p >= 0.5 {
        return rationalApprox(Double.sqrt(-2.0 * Double.log(1.0-p)))
    } else {
        return -rationalApprox( Double.sqrt(-2.0 * Double.log(p)) )
    }
    
}
