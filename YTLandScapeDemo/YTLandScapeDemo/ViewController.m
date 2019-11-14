//
//  ViewController.m
//  YTLandScapeDemo
//
//  Created by admin on 2019/11/13.
//  Copyright © 2019 admin. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor redColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //1.
    AppDelegate *app_delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    app_delegate.allowRotation = true;
    [app_delegate setInterfaceOrientationToPortrait:UIInterfaceOrientationLandscapeRight];
    
    //2.
    [self.navigationController pushViewController:[NSClassFromString(@"YTViewController") new] animated:true];
}


@end
