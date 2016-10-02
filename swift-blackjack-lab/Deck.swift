//
//  Deck.swift
//  swift-blackjack-lab
//
//  Created by Jacqueline Minneman on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Deck {
    var undealtCards: [Card]
    var dealtCards: [Card]
    var description: String {
        return "Cards Remaining: \(undealtCards.count)\n Cards Dealt: \(dealtCards.count)"
    }
    
    
    init() {
        undealtCards = []
        dealtCards = []
        
        for suit in Card.validSuits() {
            for rank in Card.validRanks() {
                self.undealtCards.append(Card(suit: suit, rank: rank))
            }
        }
    }
    
    
    
    func drawCard() -> Card {
        let topCard = undealtCards.removeLast()
        dealtCards.append(topCard)
        return topCard
    }
    
    
    func shuffle() {
        undealtCards = dealtCards + undealtCards
        dealtCards = []
        let randomNum = Int(arc4random_uniform(UInt32(Int(undealtCards.count))))
        let newNum = undealtCards.remove(at: randomNum)
        undealtCards.append(newNum)
    }
    
    
    
    
    
    
    
    
    
}

