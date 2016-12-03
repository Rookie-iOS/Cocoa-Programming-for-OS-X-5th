//
//  MainViewController.swift
//  BusyApp
//
//  Created by Yanice on 2016/12/3.
//  Copyright © 2016年 Yanice. All rights reserved.
//

import Cocoa

class MainViewController: NSWindowController {

    @IBOutlet weak var slider: NSSlider!
    @IBOutlet weak var hints: NSTextField!
    @IBOutlet weak var show: NSButton!
    @IBOutlet weak var hidden: NSButton!
    
    var value:NSInteger!
    
    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
        
        self.show.state = 1
        
        self.value = self.slider.integerValue;
        
    }
    
    @IBAction func valueChange(_ sender: NSSlider) {
        
        
        if sender.integerValue==self.value {
            return
        }else if(sender.integerValue<self.value) {
            self.hints.stringValue = "Slider Down UP!"
        }else {
            self.hints.stringValue = "Slider grow UP!"
        }
        self.value = sender.integerValue
    }
    
    @IBAction func showMarks(_ sender: NSButton) {
        self.hidden.state = 0
        self.slider.numberOfTickMarks = 10
    }
    @IBAction func hiddenMarks(_ sender: NSButton) {
        self.show.state = 0
        self.slider.numberOfTickMarks = 0
    }
    @IBAction func resetButton(_ sender: NSButton) {
        
    }
}
