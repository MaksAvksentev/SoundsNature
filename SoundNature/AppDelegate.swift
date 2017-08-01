//
//  AppDelegate.swift
//  SoundNature
//
//  Created by iMac_1 on 7/31/17.
//  Copyright © 2017 MagicUniverse. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        BaseController.load()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        if let vc = storyboard.instantiateInitialViewController() {
            window?.rootViewController = vc
            window?.makeKeyAndVisible()
        }
        
        UITabBar.appearance().selectionIndicatorImage = getImageWithColorPosition(color: .red, size: CGSize(width:(self.window?.frame.size.width)!/4,height: 49), lineSize: CGSize(width:(self.window?.frame.size.width)!/4, height:2))

        
        return true
    }

    func getImageWithColorPosition(color: UIColor, size: CGSize, lineSize: CGSize) -> UIImage {
    
        let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        let rectLine = CGRect(x: 0, y: size.height-lineSize.height, width: lineSize.width, height: lineSize.height)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        UIColor.clear.setFill()
        UIRectFill(rect)
        color.setFill()
        UIRectFill(rectLine)
        let image = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        return image
    }
    
}

