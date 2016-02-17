//
//  Window.swift
//  SKBugExample
//
//  Created by Kris Simon on 17/02/16.
//  Copyright © 2016 aus der Technik. All rights reserved.
//

import Cocoa
import SpriteKit

class Window: NSWindowController {

    @IBOutlet weak var animationView: SKView!
    
    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    func show(){
        self.loadWindow()
    }
    
    func hide() {
        self.close()
    }
    
}
