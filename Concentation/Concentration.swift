//
//  Concentration.swift
//  Concentation
//
//  Created by Mann Pargat on 28/03/18.
//  Copyright © 2018 Mann Pargat. All rights reserved.
//

import Foundation

class Concentration {
    var cards = [Card]()
    func chooseCard(at index:Int){
        
    }
    
    init(numberOfPairsOfCards: Int) {
        for identifier in 0..<numberOfPairsOfCards{
            let card = Card()
            cards += [card, card]
        }
    }

}

