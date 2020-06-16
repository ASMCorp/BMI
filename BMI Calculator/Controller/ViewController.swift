//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Asaduzzaman Anik on 5/2/20.
//  Copyright © 2020 Asaduzzaman Anik. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var calculateButton: UIButton!
    
    var bmi = calculateBMI()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateButton.layer.cornerRadius = 20.0
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        
        heightLabel.text = String(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func weightSlidre(_ sender: UISlider) {
        weightLabel.text = "\(Int(sender.value))Kg"
    }
    
    
    @IBAction func calculate(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        bmi.calculate(height: height, weight: weight)
        self.performSegue(withIdentifier: "showResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResult" {
            let destinationVC = segue.destination as! secondViewController
            destinationVC.bmiResult = bmi.getBMI()
            destinationVC.backgroundColor = bmi.getColor()
            destinationVC.advice = bmi.getAdvice()
        }
    }
}

