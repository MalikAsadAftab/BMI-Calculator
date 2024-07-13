//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Asad Aftab on 7/12/24.
//  Copyright © 2024 Asad Aftab All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var BMI : String?
    var calculation = CalculatorBrain()
    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBAction func heightSliderChange(_ sender: UISlider) {
        heightValueLabel.text = String(format:"%.2fm",sender.value)
    }
    
    @IBAction func weightSlideChange(_ sender: UISlider) {
        weightValueLabel.text = String(format:"%iKg",Int(sender.value))
    }
    
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        calculation.calculateButton(heightSliderValue: heightSlider.value, weightSliderValue: weightSlider.value)
       // let secondVC = SecondViewControllerPractice()
       // secondVC.bmi = String(format:"%.2fm",BMI)
       // self.present(secondVC, animated: true, completion: nil)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculation.getBMI()
            destinationVC.advice = calculation.getadvice()
            destinationVC.color = calculation.getcolor()
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

