//
//  MutableCollection+Ext.swift
//  HeroesWithPOP
//
//  Created by Mikael Teklehaimanot on 9/28/16.
//  Copyright © 2016 Mikael Teklehaimanot. All rights reserved.
//

import Foundation


extension MutableCollection where Index == Int {
    
    mutating func shuffle() {
        if count < 2 {return}
        
        for i in startIndex ..< endIndex - 1 {
            let j = Int(arc4random_uniform(UInt32(endIndex - 1))) + 1
            guard i != j else { continue }
            swap(&self[i], &self[j])
        }
    }
    
}
