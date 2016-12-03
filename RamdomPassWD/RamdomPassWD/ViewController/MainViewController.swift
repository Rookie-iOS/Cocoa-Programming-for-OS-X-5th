//
//  MainViewController.swift
//  RamdomPassWD
//
//  Created by Yanice on 2016/12/3.
//  Copyright © 2016年 Yanice. All rights reserved.
//

import Cocoa

class MainViewController: NSWindowController {

    @IBOutlet weak var textFiled: NSTextField!
    
    override var windowNibName: String? {
    
        return "MainViewController"
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    
    @IBAction func generateButtonAction(sender:AnyObject) {
    
        let length = 8
        
        self.textFiled.stringValue = generateStringRondom(length: length)
    }
}
