//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ricardo Camarena on 24/08/22.
//  Copyright © 2022 Ricardo Camarena. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiRounded = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiRounded
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Oops, something went wrong! Try again."
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
        
        mutating func calculateBMI(height: Float, weight: Float) {
            let bmiValue = (weight/pow(height, 2))
            if bmiValue  < 18.5 {
                bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor.blue)
            } else if bmiValue >= 18.5 && bmiValue <= 24.9 {
                bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.green)
            } else if bmiValue > 24.9 {
                bmi = BMI(value: bmiValue, advice: "Eat less pies", color: UIColor.red)
            }
        }
}
