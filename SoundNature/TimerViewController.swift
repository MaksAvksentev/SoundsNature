//
//  TimerViewController.swift
//  SoundNature
//
//  Created by iMac_1 on 7/31/17.
//  Copyright © 2017 MagicUniverse. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class TimerViewController: UIViewController, IndicatorInfoProvider  {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: - IndicatorInfoProvider
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Timer", image: UIImage(named: "timer"), highlightedImage: UIImage(named: "timeractive"))
    }

}
