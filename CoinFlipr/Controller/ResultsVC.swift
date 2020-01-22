//
//  ResultsVC.swift
//  CoinFlipr
//
//  Created by Patrick Yin on 1/21/20.
//  Copyright © 2020 Patrick Yin. All rights reserved.
//

import UIKit

class ResultsVC: UIViewController {
    
    @IBOutlet weak var resultsLabel: UILabel!
    
    var headsSelected: Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        flipCoin()
    }
    
    func flipCoin() {
        let trueHeadsSelected = Bool.random() // trueHeadsSelected is true -> heads, false -> tails
        let result: String // "correct" or "wrong"
        let correctFace: String // "heads" or "tails"
        
        if headsSelected == trueHeadsSelected {
            result = "correct"
        } else {
            result = "wrong"
        }
        
        if trueHeadsSelected {
            correctFace = "heads"
        } else {
            correctFace = "tails"
        }
        
        resultsLabel.text = "You're \(result), it was \(correctFace)"
    }
}
