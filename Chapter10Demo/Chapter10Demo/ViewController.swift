//
//  ViewController.swift
//  Chapter10Demo
//
//  Created by Sam WU on 2022-01-21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorNameSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var colorNameLabel: UILabel!
    
    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func colorChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:// Red
            colorNameLabel.text = "Red"
            colorNameLabel.backgroundColor = UIColor.red
            colorView.backgroundColor = UIColor.red
            colorNameSegmentedControl.backgroundColor = UIColor.red
        case 1:// Green
            colorNameLabel.text = "Green"
            colorNameLabel.backgroundColor = UIColor.green
            colorView.backgroundColor = UIColor.green
            colorNameSegmentedControl.backgroundColor = UIColor.green
        case 2:// Blue
            colorNameLabel.text = "Blue"
            colorNameLabel.backgroundColor = UIColor(red: 100/255, green: 200/255, blue: 150/255, alpha: 1)
            colorView.backgroundColor = UIColor.blue
            colorNameSegmentedControl.backgroundColor = UIColor(red: 100/255, green: 200/255, blue: 150/255, alpha: 1)
        default:
            colorNameLabel.text = "Unknown Color"
        }
    }
    
}

