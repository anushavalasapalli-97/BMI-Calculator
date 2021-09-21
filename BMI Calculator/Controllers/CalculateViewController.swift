//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    var bmiValue = Float()
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
        calculatorBrain.calculateBMI(height:height, weight:weight)
       // bmiValue = weight/pow(height, 2)
        self.performSegue(withIdentifier: "goToResult", sender: self)
      //  let secondVc = ResultsViewController()
      
     //   print("bmiValue:%@",secondVc.bmiValue)
      //  secondVc.bmiValue =  String(format: "%.1f",bmi)
      //  self.present(secondVc, animated: true, completion: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let controller = segue.destination as! ResultsViewController
            controller.bmiValue = calculatorBrain.getBMIValue()
            //String(format: "%.1f",bmiValue)
            controller.advice = calculatorBrain.getAdvice()
            controller.color = calculatorBrain.getColor()
            
        }
    }
}

