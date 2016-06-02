//
//  ZFBFriendsViewController.m
//  AliPay
//
//  Created by apple on 16/6/2.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ZFBFriendsViewController.h"
static NSString * cellId = @"hehe";

@interface ZFBFriendsViewController ()<UITableViewDataSource,UITableViewDelegate>
/**
 *  名字
 */
@property (nonatomic,strong) UITableView* tablev;

@end

@implementation ZFBFriendsViewController

- (void)loadView{
    _tablev = [[UITableView alloc] init];
    self.view = _tablev;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    _tablev.rowHeight = 100;
    [_tablev registerClass:[UITableViewCell class] forCellReuseIdentifier:cellId];
    _tablev.dataSource = self;
    _tablev.delegate = self;
    
    
    // Do any additional setup after loading the view.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    cell.textLabel.text = [NSString stringWithFormat:@"%zd",indexPath.row];
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    Class cla = NSClassFromString(@"vitasphereViewController");
    UIViewController * vc = [[cla alloc] init];
    
    
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
