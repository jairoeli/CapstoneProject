//
//  AppDelegate.swift
//  CapstoneProject
//
//  Created by Jairo Eli de Leon on 9/30/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    
    window = UIWindow(frame: UIScreen.main.bounds)
    window?.makeKeyAndVisible()
<<<<<<< HEAD
    window?.backgroundColor = .red
    window?.rootViewController = UIViewController()

=======
    window?.rootViewController = MainNavigationController()
    
>>>>>>> parent of b202eab... Add SwiftLint
    Thread.sleep(forTimeInterval: 1.4)
    return true
  }

}

