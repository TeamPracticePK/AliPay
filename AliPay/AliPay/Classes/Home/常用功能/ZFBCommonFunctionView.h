//
//  ZFBCommonFunctionView.h
//  AliPay
//
//  Created by Annabelle on 16/6/2.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ZFBFunctionModel;

/*!
 *  常用功能视图
 */

@interface ZFBCommonFunctionView : UIView

@property (nonatomic, strong) NSArray <ZFBFunctionModel *> *functionList;

@end
