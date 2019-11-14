//
//  AppDelegate.h
//  YTLandScapeDemo
//
//  Created by admin on 2019/11/13.
//  Copyright © 2019 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic,assign) BOOL allowRotation;
- (void)setInterfaceOrientationToPortrait:(UIInterfaceOrientation)interfaceOrientation;
@end

