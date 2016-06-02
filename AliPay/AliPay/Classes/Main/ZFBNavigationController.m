//
//  ZFBNavigationController.m
//  AliPay
//
//  Created by apple on 16/6/2.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ZFBNavigationController.h"
#import "CZAdditions.h"

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

#pragma mark - 设置导航栏样式
- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
    
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
    
    // [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"navigationbar7"] forBarMetrics:UIBarMetricsDefault];
    self.navigationBar.barTintColor = [UIColor cz_colorWithHex:0x3A3A3A];
    
    // 取消半透明效果
    self.navigationBar.translucent = NO;
    
    // 取消导航栏分割线
    // 1> 设置 空的 阴影图片
    self.navigationBar.shadowImage = [[UIImage alloc] init];
    // 2> 将navigationBar的背景图片设置为空图像
    [self.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
    
    
    //2.修改标题文本(前景)颜色 - 通过字典设置文本属性,可以非常灵活
    self.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor whiteColor]};
    
    
    
}



@end
