//
//  MainVC.swift
//  CoinFlipr
//
//  Created by Patrick Yin on 1/21/20.
//  Copyright © 2020 Patrick Yin. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    var headsSelected: Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func headsPressed(_ sender: Any) {
        headsSelected = true
        self.performSegue(withIdentifier: "toResultsVC", sender: self)
    }
    
    @IBAction func tailsPressed(_ sender: Any) {
        headsSelected = false
        self.performSegue(withIdentifier: "toResultsVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? ResultsVC, segue.identifier == "toResultsVC" {
            destinationVC.headsSelected = headsSelected
        }
    }
}

