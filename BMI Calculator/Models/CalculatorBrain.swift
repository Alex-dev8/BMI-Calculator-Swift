//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Alex Cannizzo on 13/08/2021.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmi1decimal = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmi1decimal
    }
    
    mutating func calculateBMI(height: Float, weight: Float)  {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more!", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Super fit!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less!", color: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
        }
        
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Insert BMI"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
    
}
