//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by AnushaValasapalli on 9/20/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation
import UIKit
class SecondViewController:UIViewController {
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(bmiValue)
        let label = UILabel()
        label.text = String(bmiValue)
        view.backgroundColor = UIColor.red
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
        
    }
    
}
