//
//  ReuseableCell.swift
//  HeroesWithPOP
//
//  Created by Mikael Teklehaimanot on 9/28/16.
//  Copyright © 2016 Mikael Teklehaimanot. All rights reserved.
//

import UIKit


protocol ReuseableCell: class {}

extension ReuseableCell where Self: UIView {
        static var nibName: String {
            return String(describing: self)
        }
}
