//
//  AppDelegate.m
//  AliPay
//
//  Created by apple on 16/6/2.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "AppDelegate.h"
#import "ZFBMainViewController.h"
#import "ContainerController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

/**
 *应用程序一启动就会执行
 *
 * */
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
   //用纯代码加载控制器
    //1.创建 window
    
    _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    _window.backgroundColor = [UIColor whiteColor];
    
    Class cls = NSClassFromString(@"ContainerController");
    UIViewController *vc = [[cls alloc] init];
    
    //2.设置根控制器
    
    
    _window.rootViewController = vc;
    
    //3.让 window 成为主窗口并可见
    [_window makeKeyAndVisible];
    
    
    
    return YES;
}


@end
