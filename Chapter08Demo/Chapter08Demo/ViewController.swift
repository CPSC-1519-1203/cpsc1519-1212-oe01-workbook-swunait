//
//  ViewController.swift
//  Chapter08Demo
//
//  Created by Sam WU on 2022-01-17.
//

import UIKit

class ViewController: UIViewController {
    
    func convertToFahrenheit(forCelisusValue celisus: Double) -> Double {
        var fahrenheitValue = 0.00
        fahrenheitValue = (celisus * 9/5) + 32
        return fahrenheitValue
    }
    
    var currentCelsiusValue : Double = 0.00
    
    @IBOutlet weak var fahrenheitLabel: UILabel!
    
    @IBOutlet weak var celisusTextField: UITextField!
    
    @IBOutlet weak var celsisuStepper: UIStepper!
    
    @IBOutlet weak var celsiusSlider: UISlider!
    
    
    @IBOutlet weak var logoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        celisusTextField.text = "\(currentCelsiusValue)"
        
        logoImageView.isUserInteractionEnabled = true
    }

    @IBAction func convertButtonTapped(_ sender: UIButton) {
        currentCelsiusValue = Double(celisusTextField.text!) ?? 0
        let fahrenheitValue = convertToFahrenheit(forCelisusValue: currentCelsiusValue)
        fahrenheitLabel.text = "\(fahrenheitValue)℉"
        celsisuStepper.value  = currentCelsiusValue
        celsiusSlider.value = Float(currentCelsiusValue)
    }
    
    @IBAction func celisusStepperChanged(_ sender: UIStepper) {
        currentCelsiusValue = celsisuStepper.value
        let fahrenheitValue = convertToFahrenheit(forCelisusValue: currentCelsiusValue)
        fahrenheitLabel.text = "\(fahrenheitValue)℉"
        celisusTextField.text = "\(currentCelsiusValue)"
        celsiusSlider.value = Float(currentCelsiusValue)
    }
    
    @IBAction func celisusSliderChanged(_ sender: UISlider) {
        currentCelsiusValue = Double(celsiusSlider.value)
        let fahrenheitValue = convertToFahrenheit(forCelisusValue: currentCelsiusValue)
        fahrenheitLabel.text = "\(fahrenheitValue)℉"
        celisusTextField.text = "\(currentCelsiusValue)"
        celsisuStepper.value = currentCelsiusValue
       
    }
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        celisusTextField.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        if touch?.view == logoImageView {
            print("touched")
        } else {
            print("not touched")
        }
    }
    
}

