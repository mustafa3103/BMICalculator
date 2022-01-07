//
//  CalculatorBrain.swift
//  BMI-Calculator
//
//  Created by Mustafa on 6.01.2022.
//

import UIKit


struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / (pow(height, 2))
        
        // #colorLiteral() -> After writing the this line, color palet will open after that you can pick color which you want.
        let color = (underWeight: #colorLiteral(red: 0.6357628107, green: 0.8250029683, blue: 1, alpha: 1), normalWeight: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), overWeight: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: color.underWeight)
        }else if bmiValue < 25 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: color.normalWeight)
        }else {
            bmi = BMI(value: bmiValue, advice: "Eat fewer pies!", color: color.overWeight)
        }
        
    }
    
    func getBMIValue() -> String {
        let bmiToString = String(format: "%.1f", bmi?.value ?? 0.0)
        
        return bmiToString
    }
    
    func getAdvice() -> String {
        
        let advice = bmi?.advice ?? ""
        
        return advice
    }
    
    func getColor() -> UIColor {
        let color = bmi?.color ?? .white
        
        return color
    }
    
}
