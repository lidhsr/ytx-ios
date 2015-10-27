//
//  TwoButTableViewCell.m
//  迎天下
//
//  Created by wanglulu on 15/10/22.
//  Copyright © 2015年 wanglulu. All rights reserved.
//

#import "TwoButTableViewCell.h"

@implementation TwoButTableViewCell

- (void)awakeFromNib {
    self.editorBut.layer.borderWidth = 1;
    self.deleteBut.layer.borderWidth = 1;
    self.editorBut.layer.borderColor = [UIColor blackColor].CGColor;
    self.deleteBut.layer.borderColor = [UIColor blackColor].CGColor;
    self.editorBut.layer.cornerRadius = 3;
    self.deleteBut.layer.cornerRadius = 3;
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
