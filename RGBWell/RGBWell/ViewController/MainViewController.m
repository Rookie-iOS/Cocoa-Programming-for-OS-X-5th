//
//  MainViewController.m
//  RGBWell
//
//  Created by Yanice on 2016/12/3.
//  Copyright © 2016年 Yanice. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@property (weak) IBOutlet NSColorWell *ColorWell;

@property (weak) IBOutlet NSSlider *r;
@property (weak) IBOutlet NSSlider *g;
@property (weak) IBOutlet NSSlider *b;

@end

NSString *key;

@implementation MainViewController {

    CGFloat r,g,b;
}

@synthesize r=_r;
@synthesize g=_g;
@synthesize b=_b;

- (NSString *)windowNibName {

    return @"MainViewController";
}

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    
    [self updateColor];
    
    [self.ColorWell addObserver:self forKeyPath:@"color" options:NSKeyValueObservingOptionNew context:&key];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {

    if (context == &key) {
        
        self.r.floatValue = self.ColorWell.color.redComponent;
        self.g.floatValue = self.ColorWell.color.greenComponent;
        self.b.floatValue = self.ColorWell.color.blueComponent;
    }
}

- (IBAction)redAdjust:(NSSlider *)sender {
    
    r = sender.floatValue;
    [self updateColor];
}

- (IBAction)greenAdjust:(NSSlider *)sender {

    g = sender.floatValue;
    [self updateColor];
}

- (IBAction)blueAdjust:(NSSlider *)sender {
    
    b = sender.floatValue;
    [self updateColor];
}

- (void)updateColor {

    self.ColorWell.color = [NSColor colorWithRed:r green:g blue:b alpha:1];
}

@end
