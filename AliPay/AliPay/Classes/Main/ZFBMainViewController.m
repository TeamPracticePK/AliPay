//
//  ZFBMainViewController.m
//  AliPay
//
//  Created by apple on 16/6/2.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ZFBMainViewController.h"
#import "ZFBHomeViewController.h"


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
    
    
    
    //1. 创建控制器
    ZFBHomeViewController *vc = [[ZFBHomeViewController alloc]init];
        //1>设置图像
    //2>选中图像
    //3>标题
    
    
    //2.添加到自控制器中
//    self.viewControllers = @[vc];
    self.viewControllers = @[vc];
    
    
}




@end
