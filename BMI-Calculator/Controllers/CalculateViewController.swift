//
//  ViewController.swift
//  BMI-Calculator
//
//  Created by Mustafa on 3.01.2022.
//

import UIKit

class CalculateViewController: UIViewController {

    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let formattedHeight = String(format: "%.2f", sender.value)
        heightLabel.text = "\(formattedHeight)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let formattedWeight = Int(sender.value)
        weightLabel.text = "\(formattedWeight)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let bmi = weight / (height * height)
        
        print(bmi)
    }
    

}

