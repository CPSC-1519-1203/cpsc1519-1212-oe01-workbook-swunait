//
//  SelectedFontViewController.swift
//  Chapter17Demo
//
//  Created by Sam WU on 2022-03-09.
//

import UIKit

class SelectedFontViewController: UIViewController {

    var selectedFontName = ""
    
    
    @IBOutlet weak var fontTextView: UITextView!
    
    @IBOutlet weak var fontSizeSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.title = selectedFontName
        fontTextView.font = UIFont(name: selectedFontName, size: CGFloat(12))
    }
    
    @IBAction func fontSizeChanged(_ sender: Any) {
        let fontSize = fontSizeSlider.value
        fontTextView.font = UIFont(name: selectedFontName, size: CGFloat(fontSize))
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
