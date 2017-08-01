//
//  SoundTableViewCell.swift
//  SoundNature
//
//  Created by iMac_1 on 8/1/17.
//  Copyright © 2017 MagicUniverse. All rights reserved.
//

import UIKit

class SoundTableViewCell: UITableViewCell {
    
    @IBOutlet weak var soundImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var volumeSlider: UISlider!
    
    class var className: String {
    
        return "SoundTableViewCell"
    }
    
    
    override func awakeFromNib() {

        super.awakeFromNib()
    }

    //MARK: - Nib
    class func nib() -> UINib {
    
        return UINib(nibName: "SoundTableViewCell", bundle: Bundle.main)
    }
}
