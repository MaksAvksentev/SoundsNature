//
//  BaseController.swift
//  SoundNature
//
//  Created by iMac_1 on 7/31/17.
//  Copyright © 2017 MagicUniverse. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class BaseController: BaseButtonBarPagerTabStripViewController<ItemIconView> {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        buttonBarItemSpec = ButtonBarItemSpec.nibFile(nibName: "ItemIconView", bundle: Bundle(for: ItemIconView.self), width: { _ in
            return 55.0
        })
    }

    override func viewDidLoad() {

        /// change selected bar color
        settings.style.buttonBarBackgroundColor = .red
        settings.style.buttonBarItemBackgroundColor = .clear
        settings.style.selectedBarBackgroundColor = UIColor(red: 234/255.0, green: 234/255.0, blue: 234/255.0, alpha: 1.0)
        settings.style.selectedBarHeight = 4.0
        settings.style.buttonBarMinimumLineSpacing = 0
        settings.style.buttonBarItemTitleColor = .clear
        settings.style.buttonBarItemsShouldFillAvailableWidth = false
        settings.style.buttonBarLeftContentInset = 0
        settings.style.buttonBarRightContentInset = 0
        
        changeCurrentIndexProgressive = { [weak self] (oldCell: ItemIconView?, newCell: ItemIconView?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }
            
            oldCell?.iconImage.isHighlighted = false
            
            newCell?.iconImage.isHighlighted = true
        }
        
        super.viewDidLoad()
        
    }
    
    // MARK: - PagerTabStripDataSource
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
   
        let timer = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TimerViewController")
        let sounds = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SoundsViewController")
        let savedTracks = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SavedTracksViewController")
        let random = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "RandomViewController")
        
        return [sounds, random, savedTracks, timer]
    }
    
    override func configure(cell: ItemIconView, for indicatorInfo: IndicatorInfo) {
        
        cell.iconImage.image = indicatorInfo.image?.withRenderingMode(.alwaysTemplate)
        cell.iconImage.image = indicatorInfo.image
        cell.iconImage.highlightedImage = indicatorInfo.highlightedImage
    }
}
