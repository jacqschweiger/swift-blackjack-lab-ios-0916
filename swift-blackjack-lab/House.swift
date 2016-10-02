//
//  House.swift
//  swift-blackjack-lab
//
//  Created by Jacqueline Minneman on 10/2/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class House : Player {
    
    override init(name: String){
        super.init(name: name)
        tokens = 1000
    }
    
    var mustHit: Bool {
        if handscore < 17 {
            return true
        }
        return false
    }
    
}
