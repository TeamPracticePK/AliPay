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

@implementation ZFBCommonFunctionView {
    
    NSArray <UIButton *> *_buttons;
}

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
    
    NSInteger index = 0;
    for (ZFBFunctionModel *model in functionList) {
        

        UIImage *image = [UIImage imageNamed:model.icon];
        
        NSAttributedString *attrStr = [NSAttributedString cz_imageTextWithImage:image imageWH:43 title:model.name fontSize:15 titleColor:[UIColor whiteColor] spacing:7];
        
        [_buttons[index] setAttributedTitle:attrStr forState:UIControlStateNormal];
        
        index++;
        
    }
    
    
    
}

#pragma mark - 设置界面
- (void)setupUI {
    
    // 添加4个按钮
    NSInteger count = 4;
    
    NSMutableArray <UIButton *> *arrayM = [NSMutableArray array];
    
    for (NSInteger i = 0; i < count; i++) {
        
        UIButton *btn = [[UIButton alloc] init];
        
        
         // 图文混排 - 使用`属性文本`
        UIImage *image = [UIImage imageNamed:@"home_scan"];
        
        NSAttributedString *attrStr = [NSAttributedString cz_imageTextWithImage:image imageWH:43 title:@"扫一扫" fontSize:15 titleColor:[UIColor whiteColor] spacing:7];
       
        [btn setAttributedTitle:attrStr forState:UIControlStateNormal];
        
        [btn sizeToFit];
        btn.titleLabel.numberOfLines = 0;
        btn.titleLabel.textAlignment = NSTextAlignmentCenter;
//        btn.backgroundColor = [UIColor cz_randomColor];
        
        [self addSubview:btn];
        
        [arrayM addObject:btn];
        
    }
    
    [arrayM[0] mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.bottom.equalTo(self);
    }];
    [arrayM[1] mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.equalTo(self);
        make.left.equalTo(arrayM[0].mas_right);
        make.size.equalTo(arrayM[0]);
    }];
    [arrayM[2] mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.equalTo(self);
        make.left.equalTo(arrayM[1].mas_right);
        make.size.equalTo(arrayM[1]);
    }];
    [arrayM[3] mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.equalTo(self);
        make.left.equalTo(arrayM[2].mas_right);
        make.size.equalTo(arrayM[2]);
        make.right.equalTo(self);
    }];
    
    _buttons = arrayM.copy;
   
}
@end
