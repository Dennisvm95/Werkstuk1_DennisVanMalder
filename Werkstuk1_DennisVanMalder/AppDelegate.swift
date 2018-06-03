//
//  persoonSingleton.swift
//  Werkstuk1_DennisVanMalder
//
//  Created by student on 01/06/2018.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

@UIApplicationMain
//Thread 1: signal SIGTERM
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        print("Application did finish launching")
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    /*
    
    func setTabbar() -> UITabBarController
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let tabbarcntrl = UITabBarController()
        
        let Home = storyboard.instantiateViewController(withIdentifier: "HomeView") // 1st tab bar viewcontroller
        let Followed = storyboard.instantiateViewController(withIdentifier: "FollowedView") // 2nd tab bar viewcontroller
        let Message = storyboard.instantiateViewController(withIdentifier: "MessageView") // 3rd tab bar viewcontroller
        
        // all viewcontroller embedded navigationbar
        let nvHome = UINavigationController(rootViewController: Home)
        let nvFollowed = UINavigationController(rootViewController: Followed)
        let nvMessage = UINavigationController(rootViewController: Message)
        
        // all viewcontroller navigationbar hidden
        nvHome.setNavigationBarHidden(true, animated: false)
        nvFollowed.setNavigationBarHidden(true, animated: false)
        nvMessage.setNavigationBarHidden(true, animated: false)
        
        tabbarcntrl.viewControllers = [nvHome,nvFollowed,nvMessage]
        
        let tabbar = tabbarcntrl.tabBar
        tabbar.barTintColor = UIColor.black
        tabbar.backgroundColor = UIColor.black
        tabbar.tintColor = UIColor(red: 43/255, green: 180/255, blue: 0/255, alpha: 1)
        
        //UITabBar.appearance().tintColor = UIColor.white
        let attributes = [NSAttributedStringKey.font:UIFont(name: "Montserrat-Light", size: 10)!,NSAttributedStringKey.foregroundColor:UIColor.white]
        let attributes1 = [NSAttributedStringKey.font:UIFont(name: "Montserrat-Light", size: 10)!,NSAttributedStringKey.foregroundColor:UIColor(red: 43/255, green: 180/255, blue: 0/255, alpha: 1)]
        
        UITabBarItem.appearance().setTitleTextAttributes(attributes, for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes(attributes1, for: .selected)
        
        
        let tabHome = tabbar.items![0]
        tabHome.title = "Home" // tabbar titlee
        tabHome.image=UIImage(named: "icon_home.png")?.withRenderingMode(.alwaysOriginal) // deselect image
        tabHome.selectedImage = UIImage(named: "icon_home.png")?.withRenderingMode(.alwaysOriginal) // select image
        tabHome.titlePositionAdjustment.vertical = tabHome.titlePositionAdjustment.vertical-4 // title position change
        
        let tabFoll = tabbar.items![1]
        tabFoll.title = "Followed"
        tabFoll.image=UIImage(named: "icon_fold.png")?.withRenderingMode(.alwaysOriginal)
        tabFoll.selectedImage=UIImage(named: "icon_fold.png")?.withRenderingMode(.alwaysOriginal)
        tabFoll.titlePositionAdjustment.vertical = tabFoll.titlePositionAdjustment.vertical-4
        
        let tabMsg = tabbar.items![3]
        tabMsg.title = "Message"
        tabMsg.image=UIImage(named: "icon_mail.png")?.withRenderingMode(.alwaysOriginal)
        tabMsg.selectedImage=UIImage(named: "icon_mail.png")?.withRenderingMode(.alwaysOriginal)
        tabMsg.titlePositionAdjustment.vertical = tabMsg.titlePositionAdjustment.vertical-4
        
        return tabbarcntrl
    }
 */
}

