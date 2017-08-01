//
//  RandomViewController.swift
//  SoundNature
//
//  Created by iMac_1 on 7/31/17.
//  Copyright © 2017 MagicUniverse. All rights reserved.
//

import UIKit

class RandomViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {

        super.viewDidLoad()

    }
    
    //MARK: - Private
    private func configureCollectionView() {
        
        self.collectionView.register(SoundCollectionViewCell.nib(), forCellWithReuseIdentifier: SoundCollectionViewCell.className)
    }

    
}
