//
//  HeroCell.swift
//  HeroesWithPOP
//
//  Created by Mikael Teklehaimanot on 9/27/16.
//  Copyright © 2016 Mikael Teklehaimanot. All rights reserved.
//

import UIKit

class HeroCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    var hero: Hero!
    
    func configureCell(hero: Hero) {
        self.hero = hero
        //TODO: Set cell images here
    }
    
}