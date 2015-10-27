//
//  MyOrderViewController.m
//  迎天下
//
//  Created by wanglulu on 15/10/20.
//  Copyright © 2015年 wanglulu. All rights reserved.
//

#import "MyOrderViewController.h"
#import "AllOrderViewController.h"
#import "WaitingPayViewController.h"
#import "WaitingDeliveryViewController.h"
#import "WaitingAcceptViewController.h"
#import "WaitingEvaluationViewController.h"
#import "SCNavTabBarController.h"

@interface MyOrderViewController ()

@end

@implementation MyOrderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    AllOrderViewController * allOrder = [AllOrderViewController new];
    WaitingPayViewController * waitingPay = [WaitingPayViewController new];
    WaitingDeliveryViewController * waitingDelivery = [WaitingDeliveryViewController new];
    WaitingAcceptViewController * waitingAccept = [WaitingAcceptViewController new];
    WaitingEvaluationViewController * waitingEva = [WaitingEvaluationViewController new];
    allOrder.title = @"全部";
    waitingPay.title = @"待付款";
    waitingDelivery.title = @"待发货";
    waitingAccept.title = @"待收货";
    waitingEva.title = @"待评价";
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithWhite:1.000 alpha:0.500];
    SCNavTabBarController * scn = [[SCNavTabBarController alloc] initWithSubViewControllers:@[allOrder,waitingPay,waitingDelivery,waitingAccept,waitingEva]];
    [scn addParentController:self];
    self.tabBarController.tabBar.selectedItem.selectedImage = [[UIImage imageNamed:@"my_bar"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
