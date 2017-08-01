//
//  TabBarViewController.swift
//  SoundNature
//
//  Created by iMac_1 on 8/1/17.
//  Copyright © 2017 MagicUniverse. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
    }

    override func viewWillLayoutSubviews() {
        
        super.viewWillLayoutSubviews()
        
        var tabFrame = self.tabBar.frame
        tabFrame.origin.y = self.view.frame.origin.y

        if let navigationControllerFrame = self.navigationController?.navigationBar.frame.size.height {
            
            tabFrame.origin.y = tabFrame.origin.y - navigationControllerFrame - UIApplication.shared.statusBarFrame.height
        }
        
        self.tabBar.frame = tabFrame
    }
}
