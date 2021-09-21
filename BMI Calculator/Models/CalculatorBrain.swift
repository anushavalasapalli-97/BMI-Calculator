//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by AnushaValasapalli on 9/20/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
//
//    var height = Float()
//    var weight = Float()
    var bmi: BMI?
    
    
    func getBMIValue() -> String {
        let bmiTo1DecimalName = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalName
      
    
    }
    
    mutating func calculateBMI(height:Float,weight:Float) {
        let bmiValue = weight/pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice:"eat more pies" , color: UIColor.blue)
            print("bmi",bmi)
            
        } else if (bmiValue > 18.5 && bmiValue < 24.9) {
            bmi = BMI(value: bmiValue, advice:"Fit as a fiddle" , color: UIColor.green)
            print("bmi",bmi)
        } else if (bmiValue > 25) {
            bmi = BMI(value: bmiValue, advice:"eat less pies" , color: UIColor.yellow)
            print("bmi",bmi)
        }
     }
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor()  -> UIColor{
        return bmi?.color ?? UIColor.white
    }
}
