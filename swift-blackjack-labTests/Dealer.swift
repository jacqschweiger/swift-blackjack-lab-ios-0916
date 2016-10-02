//
//  Dealer.swift
//  swift-blackjack-lab
//
//  Created by Jacqueline Minneman on 10/2/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Dealer {
    var deck = Deck()
    var house = House(name: "House")
    var player = House(name: "Player")
    var bet: UInt = 0
    
    
    func place(bet: UInt) -> Bool {
        if player.tokens > bet && house.tokens > bet {
            self.bet = bet
            return true
        } else  {
            self.bet = 0
            return false
        }
    }

    func deal() {
        deck.shuffle()
        player.cards = []
        house.cards = []
        player.stayed = false
        house.stayed = false
        player.cards.append(deck.drawCard())
        player.cards.append(deck.drawCard())
        house.cards.append(deck.drawCard())
        house.cards.append(deck.drawCard())
    }
    
    func turn(house: House) {
        if !house.stayed && !house.busted && !house.blackjack {
            if house.mustHit{ //when do you use mayHit?
                house.cards.append(deck.drawCard())
            } else {
                house.stayed = true
            }
        }
    
    }

    func winner() -> String {
        if player.blackjack || house.busted {
            return "player"
        } else if house.blackjack || player.busted {
            return "house"
        } else if house.stayed && player.stayed {
            if house.handscore > player.handscore {
                return "house"
            } else if house.handscore < player.handscore{
                return "player"
            } else if house.handscore == player.handscore{
                return "house"
            }
        } else if player.cards.count == 5 && !player.busted {
            return "player"
        } 
            return "no"
    }
    
    
    
    func award() -> String {
        var message = ""
        if winner() == "player"{
            player.tokens += bet
            house.tokens -= bet
            message = "player wins"
        } else if winner() == "house" {
            player.tokens -= bet
            house.tokens += bet
            message = "house wins"
        } else {
            message = "no winner"
        }
        return message
    }


}


