//
//  AppDelegate.swift
//  BusyApp
//
//  Created by Yanice on 2016/12/3.
//  Copyright © 2016年 Yanice. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var main:MainViewController?
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        let main = MainViewController(windowNibName: "MainViewController")
        
        main.showWindow(self)
        
        self.main = main;
        
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

