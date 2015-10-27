//
//  PayTableViewCell.h
//  迎天下
//
//  Created by wanglulu on 15/10/21.
//  Copyright © 2015年 wanglulu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PayTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIButton *selectBut;
@property (weak, nonatomic) IBOutlet UIImageView *payImage;
@property (weak, nonatomic) IBOutlet UILabel *payDetailLabel;
@property (weak, nonatomic) IBOutlet UILabel *payLabel;

@end
