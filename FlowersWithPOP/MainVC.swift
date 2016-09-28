//
//  MainVC.swift
//  HeroesWithPOP
//
//  Created by Mikael Teklehaimanot on 9/26/16.
//  Copyright © 2016 Mikael Teklehaimanot. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, DataServiceDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var headerView: HeaderView!
    
    var dataService: DataService = DataService.instance
    
    var collectionViewDataSource = [Hero]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataService.delegate = self
        dataService.addHeroToLair()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
//        let nib = UINib(nibName: "HeroCell", bundle: nil)
//        collectionView.register(nib, forCellWithReuseIdentifier: "HeroCell")
//        
        collectionView.register(HeroCell.self)
        
        headerView.addDropShadow()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return collectionViewDataSource.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeReuseableCell(forIndexPath: indexPath as NSIndexPath) as HeroCell
        cell.configureCell(hero: collectionViewDataSource[indexPath.row])
        return cell
    }
    
    func heroesAdded() {
        print("Yay heroes were added, ready to use!")
        collectionViewDataSource.append(contentsOf: dataService.heroesInSecretLair)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 187, height: 169)
    }

}
