//
//  ReuseableCell.swift
//  HeroesWithPOP
//
//  Created by Mikael Teklehaimanot on 9/28/16.
//  Copyright © 2016 Mikael Teklehaimanot. All rights reserved.
//

import UIKit


protocol ReuseableCell {}

extension ReuseableCell where Self: UITableViewCell {
        static var nibName: String {
            return String(describing: self)
        }
}
