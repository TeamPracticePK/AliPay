//
//  ContainerController.m
//  AliPay
//
//  Created by 王建科 on 16/6/2.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ContainerController.h"
#import "ZFBMainViewController.h"


@interface ContainerController ()
/**
 *  名字
 */
@property (nonatomic,strong) UIViewController * vc;

@end

@implementation ContainerController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    ZFBMainViewController * mainViewC = [[ZFBMainViewController alloc] init];
    [self addChildViewController:mainViewC];
    [self.view addSubview:mainViewC.view];
    [mainViewC didMoveToParentViewController:self];
    [self addPan];
    _vc = mainViewC;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addPan{
    
    UIPanGestureRecognizer * panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(change:)];
    [self.view addGestureRecognizer:panGesture];
    
}

- (void)change:(UIPanGestureRecognizer* )pan{
 
    CGPoint  nowPoint = [pan translationInView:self.view];
    NSLog(@"%@",NSStringFromCGPoint(nowPoint));
    [pan setTranslation:CGPointZero inView:self.view];
    CGAffineTransform transform = _vc.view.transform;
    CGFloat vcXFrame = _vc.view.frame.origin.x;
    CGFloat fload = vcXFrame+nowPoint.x;
    CGFloat margen = 100;
    
    if (fload <= 0||fload>= (self.view.bounds.size.width-margen)) {
        return;
    }
    
    switch (pan.state) {
        case UIGestureRecognizerStateBegan:
        case UIGestureRecognizerStateChanged:
            
            transform = CGAffineTransformTranslate(transform, nowPoint.x, 0);
            
            _vc.view.transform = transform;
            break;
            
        case UIGestureRecognizerStateEnded:
            if (_vc.view.frame.origin.x > self.view.frame.origin.x*0.5) {
                _vc.view.transform  = CGAffineTransformTranslate(transform, self.view.bounds.size.width-margen, 0);
                
            }else{
                _vc.view.transform = CGAffineTransformIdentity;
            }
            break;
            
        case UIGestureRecognizerStateFailed:
        case UIGestureRecognizerStateCancelled:
            
            
            break;
            
        default:
            break;
    }
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
