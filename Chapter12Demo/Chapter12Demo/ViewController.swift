//
//  ViewController.swift
//  Chapter12Demo
//
//  Created by Sam WU on 2022-02-07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var changeBackgroundColorButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func changeViewConrollerBackgroundColor(color: UIColor) {
        self.view.backgroundColor = color
    }
    
    @IBAction func changeBackgroudColor(_ sender: Any) {
        let alertTitle = "Background Color"
        let alertMessage = "Choose your background color"
        let alert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .actionSheet)
        let yellowAction = UIAlertAction(title: "Yellow", style: .default) { action in
            
            self.view.backgroundColor = UIColor.yellow
        }
        alert.addAction(yellowAction)
        let greenAction = UIAlertAction(title: "Green", style: .default, handler: {
            action -> Void in
            
            self.view.backgroundColor = UIColor.green
        })
        alert.addAction(greenAction)
        let magentaAction = UIAlertAction(title: "Magenta", style: .default) { action in
            
            self.changeViewConrollerBackgroundColor(color: UIColor.magenta)
        }
        alert.addAction(magentaAction)
        
        if let ppc = alert.popoverPresentationController {
            ppc.sourceView = changeBackgroundColorButton
            ppc.sourceRect = changeBackgroundColorButton.bounds
            
            ppc.permittedArrowDirections = .left
        }
        
        present(alert, animated: true, completion: nil)
        
    }
    

    @IBAction func sayHello(_ sender: UIButton) {
        if let name = nameTextField.text {
            var alertTitle = ""
            var alertMessage = ""
            if name.isEmpty {
                alertTitle = "Validation Error"
                alertMessage = "Please enter your name"
            } else {
                alertTitle = "Greeting Message"
                alertMessage = "Welcome to iOS world \(name)"
            }
            // Step 1: Create a UIAlertController
            let alert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
            // Step 2: Create one or more UIAlertAction and add it to the UIAlertController
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            // Step 3: Present the alert
            present(alert, animated: true, completion: nil)
        }
      
    }
    

}

