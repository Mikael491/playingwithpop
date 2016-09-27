//
//  Heroes.swift
//  HeroesWithPOP
//
//  Created by Mikael Teklehaimanot on 9/26/16.
//  Copyright © 2016 Mikael Teklehaimanot. All rights reserved.
//

import Foundation

enum Gender: String {
    case Male = "Male"
    case Female = "Female"
}

struct Hero {
    private var _id:Int!
    private var _gender: String!
    private var _age: Int!
    private var _name: String!
    private var _powerLevel: Int!
    private var _specialAbility: String!
    private var _affiliation: String!
    
    var id: Int {
        return _id
    }
    
    var gender: String {
        return _gender
    }
    
    var age: Int {
        return _age
    }
    
    var name: String {
        return _name
    }
    
    var powerLevel: Int {
        return _powerLevel
    }
    
    var specialAbility: String {
        return _specialAbility
    }
    
    var affiliation: String {
        return _affiliation
    }
    
    init(id: Int, name: String, gender: Int, age: Int, powerLevel: Int, specialAbility: String, _affiliation: String) {
        
        self._id = id
        self._name = name
        self._powerLevel = powerLevel
        self._age = age
        self._specialAbility = specialAbility
        self._affiliation = _affiliation
        
        switch gender {
        case 2:
            self._gender = Gender.Male.rawValue
        default:
            self._gender = Gender.Female.rawValue
        }
    
    }
    
}
