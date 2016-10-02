//
//  AppDelegate.swift
//  swift-blackjack-lab
//
//  Created by Flatiron School on 7/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
     
    var dealer: Dealer = Dealer()
    
   

     
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        /*
         
         * Call your custom classes here when running the scheme.
         
         */
        
        // Do not alter
        return true  //
    }   ///////////////
    
    
    func playBlackjack(withBet betAmount: UInt) {
        dealer.deal()
        dealer.place(bet: betAmount) //why is this unused?
        dealer.turn(house: dealer.player)
        dealer.turn(house: dealer.house)
    }
    
    
}

