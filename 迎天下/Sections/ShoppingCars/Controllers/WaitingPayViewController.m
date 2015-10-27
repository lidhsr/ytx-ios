//
//  WaitingPayViewController.m
//  迎天下
//
//  Created by wanglulu on 15/10/20.
//  Copyright © 2015年 wanglulu. All rights reserved.
//

#import "WaitingPayViewController.h"
#import "ShoppingDetailTableViewCell.h"
#import "DoOrderTableViewCell.h"
#import "ShoppingCountTableViewCell.h"
#import "CancelOrderView.h"
#import "FillOrderViewController.h"
#import "WaitingAcceptViewController.h"
@interface WaitingPayViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)UITableView * basicTableView;
@property(nonatomic,strong)CancelOrderView  * cancleView;
@end

@implementation WaitingPayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.cancleView = [[CancelOrderView alloc]initWithFrame:CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y , SCREEN_W, SCREEN_H-109)];
    self.basicTableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    self.basicTableView.dataSource  = self;
    self.basicTableView.delegate = self;
    [self.view addSubview:self.basicTableView];
    [self.basicTableView registerNib:[UINib nibWithNibName:@"ShoppingDetailTableViewCell" bundle:nil] forCellReuseIdentifier:@"ShoppingDetailTableView"];
    [self.basicTableView registerNib:[UINib nibWithNibName:@"DoOrderTableViewCell" bundle:nil] forCellReuseIdentifier:@"DoOrderTableView"];
    [self.basicTableView registerNib:[UINib nibWithNibName:@"ShoppingCountTableViewCell" bundle:nil] forCellReuseIdentifier:@"ShoppingCountTableView"];
    [self.cancleView.cancleBut addTarget:self action:@selector(cancleAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.cancleView.sureBut addTarget:self action:@selector(sureAction:) forControlEvents:UIControlEventTouchUpInside];
    
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    
    
    
    return 3;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    
    return 2;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        return 100;
    }else if(indexPath.section == 1){
        
        
        return 40;
    }else{
        
        return 40;
    }
    
    
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        ShoppingDetailTableViewCell * shoppingdetail = [tableView dequeueReusableCellWithIdentifier:@"ShoppingDetailTableView" forIndexPath:indexPath];
        return shoppingdetail;
    }else if (indexPath.section ==1){
        DoOrderTableViewCell * doorder = [tableView dequeueReusableCellWithIdentifier:@"DoOrderTableView" forIndexPath:indexPath];
        
        [doorder.cancleBut addTarget:self action:@selector(cancleOrder:) forControlEvents:UIControlEventTouchUpInside];
        [doorder.sureOrderBut addTarget:self action:@selector(sureOrder:) forControlEvents:UIControlEventTouchUpInside];
        
        return doorder;
        
        
    }else{
        ShoppingCountTableViewCell * shoppingCount = [tableView dequeueReusableCellWithIdentifier:@"ShoppingCountTableView" forIndexPath:indexPath];
       shoppingCount.movePayLabel.text =  @" (包含邮费20￥) ";
       shoppingCount.priceLabel.text = @"￥1314.50";
        shoppingCount.priceLabel.font = [UIFont fontWithName:@"Arial-Bold" size:15.0];
        
        return shoppingCount;
        
    }
    
    
    
    
}



-(void)cancleOrder:(UIButton*)sender{
    
    
    [self.view insertSubview:self.cancleView aboveSubview:self.basicTableView ];
    

}

-(void)sureOrder:(UIButton*)sender{
//    WaitingAcceptViewController * wait = [WaitingAcceptViewController new];
    FillOrderViewController * fillVC =[FillOrderViewController new];
    [self.navigationController pushViewController:fillVC animated:YES];
    
    
    
}

-(void)cancleAction:(UIButton*)sender{
    
    
    [self.cancleView removeFromSuperview];
    
    
    
    
}

-(void)sureAction:(UIButton*)sender{
    
    
    
    [self.cancleView removeFromSuperview];
    
    
    
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
