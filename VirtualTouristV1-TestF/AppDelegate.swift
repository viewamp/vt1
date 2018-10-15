//
//  AppDelegate.swift
//  VirtualTouristV1-TestF
//
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let stack = CoreDataStack(modelName: "LocationModel")!
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        stack.save()
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        stack.save()
    }
    
    
}
