//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Asad Aftab on 7/12/24.
//  Copyright © 2024 Asad Aftab All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain{
    var bmi : BMI?
    var bmiValue : Float?
    var BMIString : String?
    
    mutating func calculateButton(heightSliderValue: Float, weightSliderValue: Float) {
        let heightsqure = pow(heightSliderValue,2)
        bmiValue = weightSliderValue / (heightsqure)
        if (bmiValue! < 18.5){
            bmi = BMI(value: bmiValue!, advice: "Underweight! Eat more pies!", color: UIColor.blue)
        }else if(bmiValue! > 18.5 && bmiValue! < 24.9){
            bmi = BMI(value: bmiValue!, advice: "Perfect! Fit as fiddle!", color: UIColor.green)
        }else {
            bmi = BMI(value: bmiValue!, advice: "Overweight! Eat less pies!", color: UIColor.red)
        }
        BMIString = String(format:"%.2fm",bmi?.value ?? 0.00)
    }
    
    func getBMI() -> String{
        return BMIString ?? "0.00"
    }
    
    func getadvice()-> String{
        return bmi!.advice
    }
    
    func getcolor() -> UIColor{
        return bmi?.color ?? UIColor.white
    }
}

