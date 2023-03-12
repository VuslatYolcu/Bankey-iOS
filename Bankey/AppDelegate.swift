//
//  AppDelegate.swift
//  Bankey
//
//  Created by Vuslat Yolcu on 9.03.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    let loginViewController = LoginViewController()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        
        // 4- We are assinging as a delegat so that any signals from loginViewController, we can receive that information
        loginViewController.delegate = self
        window?.rootViewController = loginViewController
    
        return true
    }
}

// 5- LoginViewController will say, Hey! login is completed, you can do whatever you want.
extension AppDelegate: LoginViewControllerDelegate {
    func didLogin() {
        print("Did login")
    }
}
