//
//  AppDelegate.swift
//  SKBugExample
//
//  Created by Kris Simon on 17/02/16.
//  Copyright © 2016 aus der Technik. All rights reserved.
//

import Cocoa

let notificationcenter = NSNotificationCenter()

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        
        let mainview = Window(windowNibName: "Window");
        
        notificationcenter.addObserverForName("TestAlarm", object: nil, queue: nil) { (notification: NSNotification) in
            // open here
            print("Notification recived");
            
            mainview.show()
            
            let delay = 5.0 * Double(NSEC_PER_SEC)
            let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
            dispatch_after(time, dispatch_get_main_queue(), {
                mainview.hide()
                mainview.dismissController(nil)
            })
            
        }
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        
    }


}

