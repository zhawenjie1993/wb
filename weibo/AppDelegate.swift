//
//  AppDelegate.swift
//  weibo
//
//  Created by Mac on 2020/4/13.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        sleep(2)
        window = UIWindow()
        window?.backgroundColor = UIColor.white
        let clsName = "weibo" + "." + "WBMainViewController"
        let cls = NSClassFromString(clsName) as? UIViewController.Type
        let vc = cls?.init()
        window?.rootViewController = vc
        
      
        
//        window?.rootViewController = WBMainViewController()
        window?.makeKeyAndVisible()
        return true
    }

    // MARK: UISceneSession Lifecycle

   


}

