//
//  ViewController.swift
//  Chapter16SimpleCollectionViewApp
//
//  Created by Sam WU on 2022-03-21.
//

import UIKit

class ViewController: UIViewController {
    
    var cellColor = true

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

extension ViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customCell", for: indexPath)
        
        if cellColor {
            cell.backgroundColor = UIColor.yellow
        } else {
            cell.backgroundColor = UIColor.green
        }
        
        cellColor = !cellColor
        
        return cell
        
    }
    
    
}
