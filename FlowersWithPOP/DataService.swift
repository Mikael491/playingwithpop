//
//  DataService.swift
//  HeroesWithPOP
//
//  Created by Mikael Teklehaimanot on 9/26/16.
//  Copyright © 2016 Mikael Teklehaimanot. All rights reserved.
//

import Foundation

protocol DataServiceDelegate {
    func heroesAdded()
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
        heroesInSecretLair.append(Hero(id: 9, name: "Nightcrawler", gender: 2, age: 21, powerLevel: 4, specialAbility: "Teleportation Fury", _affiliation: "X-Men"))
        heroesInSecretLair.append(Hero(id: 10, name: "Emma Frost", gender: 1, age: 28, powerLevel: 3, specialAbility: "Telepathic Knockout", _affiliation: "Hellfire Club"))
        heroesInSecretLair.append(Hero(id: 11, name: "Rogue", gender: 1, age: 21, powerLevel: 4, specialAbility: "Power Drain", _affiliation: "X-Men"))
        heroesInSecretLair.append(Hero(id: 12, name: "QuickSilver", gender: 2, age: 21, powerLevel: 4, specialAbility: "Speed Strike", _affiliation: "Brotherhood"))
        heroesInSecretLair.append(Hero(id: 13, name: "Gambit", gender: 2, age: 25, powerLevel: 4, specialAbility: "Kinetic Cards", _affiliation: "X-Men"))
        heroesInSecretLair.append(Hero(id: 14, name: "Batgirl", gender: 1, age: 19, powerLevel: 3, specialAbility: "Shadow Knockout", _affiliation: "Solo"))
        heroesInSecretLair.append(Hero(id: 15, name: "Boy Chin Wonder", gender: 2, age: 8, powerLevel: 3, specialAbility: "Chin Attack", _affiliation: "Solo"))
        heroesInSecretLair.append(Hero(id: 16, name: "Blue Ranger", gender: 2, age: 23, powerLevel: 3, specialAbility: "Spin Attack", _affiliation: "Power Rangers"))
        
        delegate?.heroesAdded()
        
    }
    
}
