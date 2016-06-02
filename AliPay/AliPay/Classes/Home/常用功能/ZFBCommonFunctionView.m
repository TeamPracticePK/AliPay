//
//  ZFBCommonFunctionView.m
//  AliPay
//
//  Created by Annabelle on 16/6/2.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ZFBCommonFunctionView.h"
#import "CZAdditions.h"
#import "ZFBFunctionModel.h"

#import "Masonry.h"

@implementation ZFBCommonFunctionView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (void)setFunctionList:(NSArray<ZFBFunctionModel *> *)functionList {
    _functionList = functionList;
    
}

#pragma mark - 设置界面
- (void)setupUI {
    
    

    
    
}
@end
