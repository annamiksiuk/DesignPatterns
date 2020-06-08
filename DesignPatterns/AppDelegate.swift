//
//  AppDelegate.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 4/28/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
        
        FactoryMethod().runCode()
        AbstractFactory().runCode()
        
        return true
    }
}
