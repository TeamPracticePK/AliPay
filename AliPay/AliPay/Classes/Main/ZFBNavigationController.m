//
//  ZFBNavigationController.m
//  AliPay
//
//  Created by apple on 16/6/2.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ZFBNavigationController.h"

@interface ZFBNavigationController ()

@end

@implementation ZFBNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self setupUI];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 设置界面
- (void)setupUI {
    // 1. 设置`导航条`的背景图片
    /*
     UIBarMetricsDefault,               默认(竖屏的背景图片)
     UIBarMetricsCompact,               压缩->横屏
     UIBarMetricsDefaultPrompt = 101,   带提示(几乎不用，占地方)
     UIBarMetricsCompactPrompt          压缩带提示(横屏)
     */
    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"navigationbar7"] forBarMetrics:UIBarMetricsDefault];
}



@end
