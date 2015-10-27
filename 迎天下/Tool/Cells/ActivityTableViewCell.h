//
//  ActivityTableViewCell.h
//  迎天下
//
//  Created by wanglulu on 15/10/16.
//  Copyright © 2015年 wanglulu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ActivityTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *rightImage;
@property (strong, nonatomic) IBOutlet UILabel *couponsLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@property (strong, nonatomic) IBOutlet UILabel *headerActivity;

@property (strong, nonatomic) IBOutlet UIImageView *dottedlineLabel;
@property (strong, nonatomic) IBOutlet UILabel *activityLabel;
@end
