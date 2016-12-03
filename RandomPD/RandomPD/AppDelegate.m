//
//  AppDelegate.m
//  RandomPD
//
//  Created by Yanice on 2016/12/3.
//  Copyright © 2016年 Yanice. All rights reserved.
//

#import "AppDelegate.h"

#import "MainViewController.h"

@interface AppDelegate ()

@property (nonatomic, strong) MainViewController * main;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    MainViewController *mainVC = [[MainViewController alloc] initWithWindowNibName:@"MainViewController"];
    [mainVC showWindow:self];
    self.main = mainVC;
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
