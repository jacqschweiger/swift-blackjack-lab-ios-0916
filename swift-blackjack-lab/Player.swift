//
//  Player.swift
//  swift-blackjack-lab
//
//  Created by Jacqueline Minneman on 9/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Player{
    var name: String
    var cards: [Card] = []
    var tokens: UInt
    var handscore: UInt {
        return getHandscore()
    }
    
    var blackjack: Bool {
        if handscore == 21 && cards.count == 2 {
            return true
        } else {
            return false
        }
    }
    
    var busted: Bool {
        if handscore > 21 {
            return true
        } else {
            return false
        }
    }
    
    var stayed: Bool = false
    
    var mayHit: Bool {
        if !busted && !blackjack && !stayed {
            return true
        } else {
            return false
        }
    }
    
    
    
    var description: String {
        return "player : \(name) \n handscore : \(handscore) \n blackjack : \(blackjack) \n busted : \(busted) \n stayed : \(stayed) \n tokens : \(tokens) \n cards : \(cards)".lowercased()
    }
    
    init(name: String){
        self.name = name
        self.tokens = 100
    }
    
    
    func canPlace(bet: UInt) -> Bool {
        if tokens >= bet {
            return true
        } else {
            return false
        }
    }
    
    func didWin(bet: UInt){
        tokens += bet
    }
    
    func didLose(bet: UInt){
        tokens -= bet
    }
    
    
    
    
    func containsAce() -> Bool {
        for card in cards {
            if card.rank == "A"  {
                return true
            }
        }
        return false
    }
    
    
    
    
    func getHandscore() -> UInt {
        var score: UInt = 0
        for card in cards {
            score += card.cardValue
        }
        if score <= 11 && containsAce() {
            score += 10
            }
        return score
        }
    

}

