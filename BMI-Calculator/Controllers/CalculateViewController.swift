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
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //QQ
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
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }

}

