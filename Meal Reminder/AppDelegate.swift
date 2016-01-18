//
//  AppDelegate.swift
//  Meal Reminder
//
//  Created by ploots on 1/13/16.
//  Copyright © 2016 ploots. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    let vc = ViewController()
    var fireFunction = NSTimer?()
    
    

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
       
        
        application.setMinimumBackgroundFetchInterval(UIApplicationBackgroundFetchIntervalMinimum)

       
   
        // Override point for customization after application launch.
        return true
    }
    
    func application(application: UIApplication, performFetchWithCompletionHandler completionHandler: (UIBackgroundFetchResult) -> Void) {
        // Get some new data here
        
        let timestamp = NSDateFormatter.localizedStringFromDate(NSDate(), dateStyle: .NoStyle, timeStyle: .ShortStyle)
        
        print(timestamp)

        completionHandler(UIBackgroundFetchResult.NewData)
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }
    
    
    

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        
        let app = UIApplication.sharedApplication()
        
        let notificationSettings = UIUserNotificationSettings(forTypes:
            [.Alert, .Sound], categories: nil)
        
        app.registerUserNotificationSettings(notificationSettings)
        
        let alertTime = NSDate().dateByAddingTimeInterval(10)
        
//        func getTimeStamp(){
//            
//            let timestamp = NSDateFormatter.localizedStringFromDate(NSDate(), dateStyle: .NoStyle, timeStyle: .ShortStyle)
//            
//            print(timestamp, "duh")
//            
//            
//        }
        
//        fireFunction = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("getTimeStamp"), userInfo: nil, repeats: true)
        
        
        let notifyAlarm = UILocalNotification()
        
        notifyAlarm.fireDate = alertTime
        notifyAlarm.timeZone = NSTimeZone.defaultTimeZone()
        notifyAlarm.soundName = "bell_tree.mp3"
        notifyAlarm.alertBody = "Staff Meeting in 30 minutes"
        app.scheduleLocalNotification(notifyAlarm)
       
        

        
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

