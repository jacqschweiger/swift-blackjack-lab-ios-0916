

//
//  Card.swift
//  swift-blackjack-lab
//
//  Created by Jacqueline Minneman on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//



import Foundation



class Card {
    
    var suit: String
    
    var rank: String
    
    var cardLabel: String
    
    var cardValue: UInt
    
    var description: String
    
    
    
    
    
    init(suit: String, rank: String) {
        
        self.suit = suit
        
        self.rank = rank
        
        self.cardLabel = "\(suit)\(rank)"
        
        self.description = self.cardLabel
        
        switch rank {
            
        case "A":
            
            self.cardValue = 1
            
            
            
        case "2":
            
            self.cardValue = 2
            
            
            
        case "3":
            
            self.cardValue = 3
            
            
            
        case "3":
            
            self.cardValue = 3
            
            
            
        case "4":
            
            self.cardValue = 4
            
            
            
        case "5":
            
            self.cardValue = 5
            
            
            
        case "6":
            
            self.cardValue = 6
            
            
            
        case "7":
            
            self.cardValue = 7
            
            
            
        case "8":
            
            self.cardValue = 8
            
            
            
        case "9":
            
            self.cardValue = 9
            
            
            
        case "10":
            
            self.cardValue = 10
            
            
            
        case "J":
            
            self.cardValue = 10
            
            
            
        case "Q":
            
            self.cardValue = 10
            
            
            
        case "K":
            
            self.cardValue = 10
            
            
            
        default:
            
            self.cardValue = 0
            
        }
        
    }
    
    
    
    
    
    static func validSuits() -> [String] {
        
        return ["♠︎", "♥︎", "♦︎", "♣︎"]
        
        
        
    }
    
    
    
    static func validRanks() -> [String] {
        
        return ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        
    }
    
    
    
}



//Why do you need this part???:
//Write a function called determineCardValue(_:) which takes a card's rank as a string and returns a unsigned integer. Change your initializer to use this function in setting the value for the card being initialized.



//    func determineCardValue(_ rank: String) -> UInt{

//        switch rank {

//        case "A":

//            return 1

//

//        case "1":

//            return 1

//

//        case "2":

//            return 2

//

//        case "3":

//            return 3

//

//        case "3":

//            return 3

//

//        case "4":

//            return 4

//

//        case "5":

//            return 5

//

//        case "6":

//            return 6

//

//        case "7":

//            return 7

//

//        case "8":

//            return 8

//

//        case "9":

//            return 9

//

//        case "10":

//            return 10

//

//        case "J":

//            return 10

//

//        case "Q":

//            return 10

//            

//        case "K":

//            return 10

//            

//        default:

//            return 0

//        }













//Why do you need this part??
//Create a global function outside the end of the class called descriptionFor(cardArray:). This should take in an array of Card objects and return a single string of all the cardLabels in the array, sorted by suit and rank, with each suit on a new line.



func descriptionFor(cardArray: [Card])-> String {
    
    var suitAndRank = ""
    
    for card in cardArray {
        
        suitAndRank.append("\(card.suit)\(card.rank) ") //how do you use cardLabel here? how to sort by suit by line?
    }
    
    return suitAndRank
    
}







