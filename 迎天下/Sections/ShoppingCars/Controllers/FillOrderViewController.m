//
//  FillOrderViewController.m
//  迎天下
//
//  Created by wanglulu on 15/10/21.
//  Copyright © 2015年 wanglulu. All rights reserved.
//

#import "FillOrderViewController.h"
#import "ShoppingDetailTableViewCell.h"
#import "ActivityTableViewCell.h"
#import "TwoLabelTableViewCell.h"
#import "ThreeLabelTableViewCell.h"
#import "OneLabelButtonTableViewCell.h"
#import "AddressTableViewCell.h"
#import "PayTableViewCell.h"
#import "SelectAddressTableViewController.h"

@interface FillOrderViewController ()
@property(nonatomic,strong)UITableView * basicTableView;
@end

@implementation FillOrderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.bottomView = [[BottomView alloc] initWithFrame:CGRectMake(0, SCREEN_H-109, SCREEN_W, 60)];
    [self.bottomView.settlement setTitle:@"支付" forState:UIControlStateNormal];
    
    self.basicTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_W, SCREEN_H-60) style:UITableViewStyleGrouped];
    self.view.backgroundColor = [UIColor whiteColor];
    self.basicTableView.dataSource = self;
    self.basicTableView.delegate = self;
    self.basicTableView.backgroundColor = [UIColor greenColor];
    self.basicTableView.contentInset = UIEdgeInsetsMake(-35, 0, 0, 0);
    

    [self.basicTableView registerNib:[UINib nibWithNibName:@"AddressTableViewCell" bundle:nil] forCellReuseIdentifier:@"AddressTableView"];
    [self.basicTableView registerNib:[UINib nibWithNibName:@"ShoppingDetailTableViewCell" bundle:nil] forCellReuseIdentifier:@"ShoppingDetailTableView"];
    [self.basicTableView registerNib:[UINib nibWithNibName:@"ActivityTableViewCell" bundle:nil] forCellReuseIdentifier:@"activity"];
    [self.basicTableView registerNib:[UINib nibWithNibName:@"TwoLabelTableViewCell" bundle:nil] forCellReuseIdentifier:@"TwoLabelTableView"];
    [self.basicTableView registerNib:[UINib nibWithNibName:@"ThreeLabelTableViewCell" bundle:nil] forCellReuseIdentifier:@"ThreeLabelTableView"];
    [self.basicTableView registerNib:[UINib nibWithNibName:@"OneLabelButtonTableViewCell" bundle:nil] forCellReuseIdentifier:@"OneLabelButtonTableView"];
    [self.basicTableView registerNib:[UINib nibWithNibName:@"PayTableViewCell" bundle:nil] forCellReuseIdentifier:@"PayTableView"];
    
    
    
    [self.view addSubview:self.basicTableView];
    [self.view addSubview:self.bottomView];

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    switch (section) {
        case 0:
            return 1;
            case 1:
            return 5;
            case 2:
            return 4;
            case 3:
            return 3;
        default:
            break;
    }
    return 2;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath   {
    
    switch (indexPath.section) {
        case 0:
            return 60.0;
            break;
            case 1:
            if (indexPath.row == 0 ||indexPath.row ==1) {
                return 100;
            }else{
                return 40;
            }
            case 2:
            return 40;
            case 3:
            return 40;
        default:
            break;
    }
    
    return 40;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    
    
    return 4;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        AddressTableViewCell * addressCell = [tableView dequeueReusableCellWithIdentifier:@"AddressTableView" forIndexPath:indexPath];
        return addressCell;
    }else if (indexPath.section ==1 ){
        if (indexPath.row == 2) {
            ActivityTableViewCell * actCell = [tableView dequeueReusableCellWithIdentifier:@"activity" forIndexPath:indexPath];
            actCell.detailLabel.text = @"已经满足换购";
            return actCell;
        }else if(indexPath.row == 3 ||indexPath.row == 4){
            ThreeLabelTableViewCell * threeCell = [tableView dequeueReusableCellWithIdentifier:@"ThreeLabelTableView" forIndexPath:indexPath];
            if (indexPath.row ==3) {
               threeCell.oneLabel.text = @"配送方式";
                threeCell.twoLabel.text = @"快递";
                threeCell.threeLabel.text = @"包邮";
            }else{
                threeCell.oneLabel.text = @"小计";
                threeCell.twoLabel.text = @"（共2件商品）";
                threeCell.twoLabel.font = [UIFont systemFontOfSize:13];
                threeCell.threeLabel.text = @"￥8888.00";

            }
            return threeCell;
            
            
        }else{
            ShoppingDetailTableViewCell * detailCell = [tableView dequeueReusableCellWithIdentifier:@"ShoppingDetailTableView" forIndexPath:indexPath];
            
            return detailCell;
        }
        
        
        
    }else if(indexPath.section ==2){
        if (indexPath.row == 2) {
            OneLabelButtonTableViewCell * LabelButCell = [tableView dequeueReusableCellWithIdentifier:@"OneLabelButtonTableView" forIndexPath:indexPath];
            return LabelButCell;
        }else{
ThreeLabelTableViewCell * threeCell = [tableView dequeueReusableCellWithIdentifier:@"ThreeLabelTableView" forIndexPath:indexPath];
            if (indexPath.row == 0) {
                threeCell.oneLabel.text = @"优惠活动";
                threeCell.twoLabel.text = @"省￥15:";
                threeCell.threeLabel.text = @"组合优惠";
            }else{
                
                threeCell.oneLabel.text = @"使用红包";
                threeCell.threeLabel.text = @"不可用";
            }
            
            return threeCell;
        }
        
        
        
    }else{
        if (indexPath.row == 1 || indexPath.row == 2) {
            PayTableViewCell * payCell = [tableView dequeueReusableCellWithIdentifier:@"PayTableView" forIndexPath:indexPath];
            [payCell.selectBut setImage:[[UIImage imageNamed:@"my_whitebut"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
            if (indexPath.row == 1) {
                payCell.payImage.image = [UIImage imageNamed:@"my_ailyPay"];
                payCell.payLabel.text = @"支付宝支付";
                payCell.payDetailLabel.text = @"(支持大额订单支付)";
            }else{
                payCell.payImage.image = [UIImage imageNamed:@"my_wechat"];
                payCell.payLabel.text = @"微信支付";
                payCell.payDetailLabel.text = @"(单笔订单金额最高支持8000元)";
                
            }
            
            return payCell;
        }else{
            
            TwoLabelTableViewCell * twoCell = [tableView dequeueReusableCellWithIdentifier:@"TwoLabelTableView" forIndexPath:indexPath];
            return twoCell;
        }
        
        
        
        
    }
    
    
    return nil;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section == 0 && indexPath.row ==0) {
        SelectAddressTableViewController * selectAddressVC =[SelectAddressTableViewController new];
        [self.navigationController pushViewController:selectAddressVC animated:YES];
        
        
        
    }
    
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
