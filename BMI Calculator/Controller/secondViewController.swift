//
//  secondViewController.swift
//  BMI Calculator
//
//  Created by Asaduzzaman Anik on 5/5/20.
//  Copyright © 2020 Asaduzzaman Anik. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    @IBOutlet weak var bmiResultLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var recalculateButton: UIButton!
    
    var bmiResult: String?
    var backgroundColor: UIColor?
    var advice: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recalculateButton.layer.cornerRadius = 20.0
        bmiResultLabel.text = bmiResult ?? "0.0"
        commentLabel.text = advice ?? ""
        view.backgroundColor = backgroundColor!
    }
    

    @IBAction func recalculate(_ sender: UIButton) {
    
        self.dismiss(animated: true, completion: nil)
    }
    
}
