//
//  calculateBMI.swift
//  BMI Calculator
//
//  Created by Asaduzzaman Anik on 5/5/20.
//  Copyright © 2020 Asaduzzaman Anik. All rights reserved.
//

import UIKit

struct calculateBMI {

    var bmi: BMI?
    
    mutating func calculate(height: Float, weight: Float){
        let bmiResult = (weight / pow(height, 2))
        if bmiResult < 18.5 {
            bmi = BMI(value: bmiResult, advice: "TF You do all day nigga, eat something!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }
        else if bmiResult < 24.9 {
            bmi = BMI(value: bmiResult, advice: "Kudos to your diet.", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }
        else{
            bmi = BMI(value: bmiResult, advice: "Do you think You're pregnent? The answer is NO, You're just fat!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
        
        
    }

    func getBMI() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0 )
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
}
