//
//  SoundsViewController.swift
//  SoundNature
//
//  Created by iMac_1 on 7/31/17.
//  Copyright © 2017 MagicUniverse. All rights reserved.
//

import UIKit
import  XLPagerTabStrip

class SoundsViewController: UIViewController, IndicatorInfoProvider  {

    override func viewDidLoad() {
        
        super.viewDidLoad()

    }

    // MARK: - IndicatorInfoProvider
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Sounds", image: UIImage(named: "sounds"), highlightedImage: UIImage(named: "soundactive"))
    }
}
