//
//  UINavigationController+StatusBar.m
//  Courtesy
//
//  Created by Zheng on 8/10/16.
//  Copyright © 2016 82Flex. All rights reserved.
//

#import "UINavigationController+StatusBar.h"

@implementation UINavigationController (StatusBar)
- (UIStatusBarStyle)preferredStatusBarStyle {
    return self.topViewController.preferredStatusBarStyle;
}

#pragma mark - View Style

- (BOOL)shouldAutorotate {
    if (SYSTEM_VERSION_LESS_THAN(@"8.0")) {
        return NO;
    }
    return self.topViewController.shouldAutorotate;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    if (SYSTEM_VERSION_LESS_THAN(@"8.0")) {
        return UIInterfaceOrientationMaskPortrait;
    }
    return self.topViewController.supportedInterfaceOrientations;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return self.topViewController.preferredInterfaceOrientationForPresentation;
}

@end