//
//  AppDelegate.swift
//  FoursquareClone
//
//  Created by Mert Erciyes Çağan on 6/7/24.
//

import UIKit
import ParseCore

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let parseConfig = ParseClientConfiguration {
                    $0.applicationId = "SclnT8H5BqJvlHVOUVhPgRuXCOATaPENP4nkSvlr"
                    $0.clientKey = "stDu8hkhDFiIlZSXIW1w9fK5uiNIQZs6fVR4gGhV"
                    $0.server = "https://parseapi.back4app.com/"
                }
                Parse.initialize(with: parseConfig)
                return true
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

