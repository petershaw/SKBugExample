//
//  StatusMenuController.swift
//  Kuckucksuhr
//
//  Created by Kris Simon on 29/12/15.
//  Copyright © 2015 aus der Technik. All rights reserved.
//

import Cocoa

class StatusMenuController: NSObject {

    @IBOutlet weak var menu: NSMenu!
    
    let statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(NSVariableStatusItemLength)
    
    override func awakeFromNib() {
        let icon = NSImage(named: "statusIcon")
        statusItem.image = icon
        statusItem.menu = menu
    }
    
    
    @IBAction func quitClicked(sender: NSMenuItem) {
        NSApplication.sharedApplication().terminate(self)
    }
    
    @IBAction func showClicked(sender: NSMenuItem){
        let alarm = NSNotification(name: "TestAlarm", object: sender.tag)
        notificationcenter.postNotification(alarm)
    }
    
}
