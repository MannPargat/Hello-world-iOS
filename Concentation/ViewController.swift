//
//  ViewController.swift
//  Concentation
//
//  Created by Mann Pargat on 26/03/18.
//  Copyright © 2018 Mann Pargat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game = Concentration()

    @IBOutlet weak var flipsLable: UILabel!
    @IBOutlet var cards: [UIButton]!
    var emojiChoices = ["🎃", "👻", "🎃", "👻"]
    var flipCount: Int = 0 {
        didSet {
            flipsLable.text = "Flips: \(flipCount)"
        }
    }

    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cards.index(of: sender) {
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("nil optional")
        }
    }

    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }

    }
}

