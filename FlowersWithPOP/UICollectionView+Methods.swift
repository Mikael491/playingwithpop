//
//  UICollectionView+Methods.swift
//  HeroesWithPOP
//
//  Created by Mikael Teklehaimanot on 9/28/16.
//  Copyright © 2016 Mikael Teklehaimanot. All rights reserved.
//

import UIKit


extension UICollectionView {
    
    func register<T: UICollectionViewCell>(_: T.Type) where T: ReuseableCell {
        
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.nibName)
    }
    
    func dequeReuseableCell<T: UICollectionViewCell where T: ReuseableCell>(forIndexPath indexPath: NSIndexPath) -> T {
    
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.nibName, for: indexPath as IndexPath) as? HeroCell else {
            print("=======================================================")
            print("=======================================================")
            fatalError("There was an error at guard statement in UICollectionView Extension file")
        }
        
        return cell as! T
    }
}
