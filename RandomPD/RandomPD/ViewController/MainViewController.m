//
//  MainViewController.m
//  RandomPD
//
//  Created by Yanice on 2016/12/3.
//  Copyright © 2016年 Yanice. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@property (weak) IBOutlet NSTextField *textFiled;

@end

@implementation MainViewController {

    NSString *characterStr;
}

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    
    characterStr = @"0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
}

- (IBAction)buttonAction:(NSButton *)sender {
    
    [self generateRandomString];
}

- (void)generateRandomString {

    self.textFiled.stringValue = [self generateRondomCharacte:8];
}

- (NSString *)generateRondomCharacte:(NSInteger)length {

    NSString *pwdStr = @"";
    for (int i=0; i<length; i++) {
        
        NSUInteger index = arc4random()%characterStr.length;
        pwdStr = [pwdStr stringByAppendingFormat:@"%c",[characterStr characterAtIndex:index]];
    }
    return pwdStr;
}



@end
