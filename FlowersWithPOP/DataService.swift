//
//  DataService.swift
//  HeroesWithPOP
//
//  Created by Mikael Teklehaimanot on 9/26/16.
//  Copyright © 2016 Mikael Teklehaimanot. All rights reserved.
//

import Foundation

protocol DataServiceDelegate {
    func addHeroToLair()
}

class DataService {
    
    static let instance = DataService()
    
    var heroesInSecretLair: Array<Hero> = []
    
    var delegate: DataServiceDelegate?
    
    func addHeroToLair() {
        
        heroesInSecretLair.append(Hero(id: 1, name: "Wolverine", gender: 2, age: 137, powerLevel: 5, specialAbility: "Breserker Rage", _affiliation: "X-Men"))
        heroesInSecretLair.append(Hero(id: 2, name: "Simba", gender: 2, age: 7, powerLevel: 3, specialAbility: "Roar", _affiliation: "Lion Order"))
        heroesInSecretLair.append(Hero(id: 3, name: "Buffy", gender: 1, age: 21, powerLevel: 3, specialAbility: "Heart Stab", _affiliation: "Solo"))
        heroesInSecretLair.append(Hero(id: 4, name: "Progressive Woman", gender: 1, age: 24, powerLevel: 4, specialAbility: "Insurance Price Slash", _affiliation: "Progressive Auto"))
        heroesInSecretLair.append(Hero(id: 5, name: "Kim Possible", gender: 1, age: 16, powerLevel: 5, specialAbility: "Karate Kick", _affiliation: "Solo"))
        heroesInSecretLair.append(Hero(id: 6, name: "Sora", gender: 2, age: 17, powerLevel: 5, specialAbility: "Keyblade Blast", _affiliation: "Solo"))
        heroesInSecretLair.append(Hero(id: 7, name: "Robin", gender: 2, age: 12, powerLevel: 5, specialAbility: "Acrobat Fury", _affiliation: "Flying Graysons"))
        heroesInSecretLair.append(Hero(id: 8, name: "Jean Grey/Phoenix", gender: 1, age: 21, powerLevel: 5, specialAbility: "Phoenix Force", _affiliation: "X-Men"))
        
        delegate?.addHeroToLair()
        
    }
    
}
