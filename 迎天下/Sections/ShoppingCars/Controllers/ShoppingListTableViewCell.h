//
//  ShoppingListTableViewCell.h
//  迎天下
//
//  Created by wanglulu on 15/10/16.
//  Copyright © 2015年 wanglulu. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ShoppingListTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIButton *seletbut;
@property (weak, nonatomic) IBOutlet UIImageView *shoppongImage;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UILabel *numLabel;
@property (weak, nonatomic) IBOutlet UIButton *changeBut;
@property (weak, nonatomic) IBOutlet UIButton *addBut;
@property (weak, nonatomic) IBOutlet UITextField *numbField;
@property (weak, nonatomic) IBOutlet UIButton *reduceBut;
@property (weak, nonatomic) IBOutlet UILabel *reducePrice;

@end
