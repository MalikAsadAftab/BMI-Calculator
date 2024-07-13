//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Asad Aftab on 7/12/24.
//  Copyright © 2024 Asad Aftab All rights reserved.
//

import Foundation
import UIKit

class SecondViewControllerPractice: UIViewController {
    var bmi = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.red
        let label = UILabel()
        label.text = "Hello.Your BMI is \(bmi)"
        label.frame = CGRect(x: 0, y: 0, width: 800, height: 50)
        view.addSubview(label)
        
    }
}
