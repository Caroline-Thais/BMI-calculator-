//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Thaís Caroline Silva on 23/07/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Underweight", color: UIColor.purple)
        }else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Normal Weight", color: UIColor.green)
        }else{
            bmi = BMI(value: bmiValue, advice: "Overweight", color: UIColor.red)
        }        
    }
}
