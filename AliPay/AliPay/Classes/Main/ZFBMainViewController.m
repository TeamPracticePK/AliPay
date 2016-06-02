//
//  ZFBMainViewController.m
//  AliPay
//
//  Created by apple on 16/6/2.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ZFBMainViewController.h"
#import "ZFBNavigationController.h"


@interface ZFBMainViewController ()

@end

@implementation ZFBMainViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self addChildViewControllers];
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 * 添加所有子控制器
 
 */

- (void)addChildViewControllers {
    //1.创建数组
    NSMutableArray *children = [NSMutableArray array];
    
    [children addObject:[self viewControllerWithClsName:@"ZFBHomeViewController" title:@"支付宝" imgName:@"TabBar_HomeBar"]];
    [children addObject:[self viewControllerWithClsName:@"ZFBBusinessViewController" title:@"口碑" imgName:@"TabBar_Businesses"]];
    [children addObject:[self viewControllerWithClsName:@"ZFBFriendsViewController" title:@"朋友" imgName:@"TabBar_Friends"]];
    [children addObject:[self viewControllerWithClsName:@"ZFBMineViewController" title:@"我的" imgName:@"TabBar_Assets"]];
    

    
    // 2. 设置子自控制器
    self.viewControllers = children.copy;
}

- (UIViewController *)viewControllerWithClsName:(NSString *)clsName title:(NSString *)title imgName:(NSString *)imgName {
    // 1. 创建控制器
    // 1> 用 clsName 创建一个类，运行时的技巧
    Class cls = NSClassFromString(clsName);
    UIViewController *vc = [[cls alloc] init];
    
    // 1> 设置图像
    vc.tabBarItem.image = [UIImage imageNamed:imgName];
    
    // 2> 选中图像
    UIImage *imageSel = [UIImage imageNamed:[imgName stringByAppendingString:@"_Sel"]];
    vc.tabBarItem.selectedImage = [imageSel imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    

    
    // 3> 标题 - 既可以设置 nav 的标题，也可以设置 tabbar 的标题
    vc.title = title;
    
    // 2. 创建 Nav 控制器
    ZFBNavigationController *nav = [[ZFBNavigationController alloc] initWithRootViewController:vc];

    
    return nav;
}



@end
