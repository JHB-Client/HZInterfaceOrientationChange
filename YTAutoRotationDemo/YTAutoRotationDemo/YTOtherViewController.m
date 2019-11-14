//
//  YTOtherViewController.m
//  YTAutoRotationDemo
//
//  Created by admin on 2019/11/13.
//  Copyright © 2019 admin. All rights reserved.
//

#import "YTOtherViewController.h"

@interface YTOtherViewController ()
@property(nonatomic,assign) BOOL statusHiden;
@end

@implementation YTOtherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.transform = CGAffineTransformMakeRotation(M_PI_2);//对renderView的父视图做正向旋转变换
        self.view.frame = CGRectMake(0, 0, self.view.bounds.size.height, self.view.bounds.size.width);//设置父视图的横屏布局
        
    
    UILabel *label = [UILabel new];
    label.backgroundColor = [UIColor redColor];
    label.text = @"eewrewewrewrewrewrwerewrweewrwerwerewr";
    [self.view addSubview:label];
    label.frame = CGRectMake(0, 0, self.view.bounds.size.height, self.view.bounds.size.width);
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    [btn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor = [UIColor greenColor];
    [self.view addSubview:btn];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = true;
    
    self.statusHiden = YES;
    // 刷新状态栏
    [self performSelector:@selector(setNeedsStatusBarAppearanceUpdate)];

}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    self.navigationController.navigationBar.hidden = false;
    
    self.statusHiden = NO;
    // 刷新状态栏
    [self performSelector:@selector(setNeedsStatusBarAppearanceUpdate)];
}

- (void)back {
    [self.navigationController popViewControllerAnimated:true];
}

- (BOOL)prefersStatusBarHidden{

    return self.statusHiden;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
