//
//  ViewController.swift
//  HelloIOSWorld
//
//  Created by user211011 on 1/10/22.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Custom Outlets
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var ageTextField: UITextField!
    
    // MARK: View Events
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: Custom Actions
    @IBAction func changeGreeting(_ sender: UIButton) {
        if let name = nameTextField.text {
            if let age = ageTextField.text {
                let message = "Hello \(name). You are \(age) years old"
                resultLabel.text = message
            }
        }
        
    }
    
    @IBAction func dismissKeyboard(_ sender: UITextField) {
        sender.resignFirstResponder()
        
    }
    
    @IBAction func dismissKeypad(_ sender: Any) {
        ageTextField.resignFirstResponder()
        nameTextField.resignFirstResponder()
    }
    
}


