//
//  ActivityTableViewCell.m
//  迎天下
//
//  Created by wanglulu on 15/10/16.
//  Copyright © 2015年 wanglulu. All rights reserved.
//

#import "ActivityTableViewCell.h"

@implementation ActivityTableViewCell

- (void)awakeFromNib {
    // Initialization code
    self.headerActivity.layer.cornerRadius = 3;
    self.headerActivity.layer.masksToBounds = YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
