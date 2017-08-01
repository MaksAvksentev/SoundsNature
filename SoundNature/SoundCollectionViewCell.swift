//
//  SoundCollectionViewCell.swift
//  SoundNature
//
//  Created by iMac_1 on 8/1/17.
//  Copyright © 2017 MagicUniverse. All rights reserved.
//

import UIKit

class SoundCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var soundImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    class var className: String {
        
        return "SoundCollectionViewCell"
    }
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
    }
    
    //MARK: - Nib
    class func nib() -> UINib {
        
        return UINib(nibName: "SoundCollectionViewCell", bundle: Bundle.main)
    }
}
