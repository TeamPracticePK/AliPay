//
//  ZFBHomeViewController.m
//  AliPay
//
//  Created by apple on 16/6/2.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ZFBHomeViewController.h"
#import "Masonry.h"
#import "CZAdditions.h"

@interface ZFBHomeViewController ()

@end

@implementation ZFBHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
    
    self.view.backgroundColor = [UIColor blueColor];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - 设置界面
- (void)setupUI {
    
    // 顶部视图 UIView
    UIView *topView = [[UIView alloc] init];
    topView.backgroundColor = [UIColor cz_colorWithHex:0x3A3A3A];
    
    [self.view addSubview:topView];
    
    [topView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.right.equalTo(self.view);
        make.height.mas_equalTo(115);
    }];
 
    // 底部视图 UICollectionView
    
    UIView *bottomView = [[UIView alloc ]init];
    bottomView.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:bottomView];
    
    [bottomView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.equalTo(self.view);
        make.top.equalTo(topView.mas_bottom);
    }];
    
}

@end
