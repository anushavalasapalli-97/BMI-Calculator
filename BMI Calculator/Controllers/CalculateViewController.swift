//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewUI()
    }
    func viewUI() {
      
    }
  
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let currentValue = sender.value
        print("currentWeightValue:%@", currentValue)
        
       
        weightLabel.text = String(format: "%.0fKg", currentValue)
    }
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let currentValue = sender.value
        print("currentHeightValue:%@", currentValue.rounded())
        heightLabel.text = String(format: "%.2fm",currentValue)
        
        // we can use %.2f to get two values after point
    }
    @IBAction func btnCalculatePressed(_ sender: UIButton) {
     
     let height = heightSlider.value
     let weight = weightSlider.value
        
        var bmi = weight/pow(height, 2)
        
        let secondVc = ResultsViewController()
      
        print("bmiValue:%@",secondVc.bmiValue)
        secondVc.bmiValue =  String(format: "%.1f",bmi)
        self.present(secondVc, animated: true, completion: nil)
        

    }
}

