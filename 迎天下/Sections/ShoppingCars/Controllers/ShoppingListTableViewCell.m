//
//  ShoppingListTableViewCell.m
//  迎天下
//
//  Created by wanglulu on 15/10/16.
//  Copyright © 2015年 wanglulu. All rights reserved.
//
#import <QuartzCore/QuartzCore.h>
#import "ShoppingListTableViewCell.h"
#import  "Masonry.h"


@implementation ShoppingListTableViewCell

- (void)awakeFromNib {
   
    self.detailLabel.text = @"颜色： 蓝色 尺码：M";
    self.detailLabel.layer.borderColor = [UIColor blackColor].CGColor;
    self.detailLabel.layer.borderWidth = .5;
    self.reduceBut.layer.borderWidth = .5;
    self.addBut.layer.borderWidth = .5;
    self.numbField.layer.borderWidth =.5;
//    self.numbField.layer.borderColor = [UIColor redColor].CGColor;
    self.numbField.layer.masksToBounds=YES;
    self.detailLabel.layer.borderWidth = 0;
    self.detailLabel.layer.borderWidth = 0;
    
    //中划线
    
          NSDictionary *attribtDic = @{NSStrikethroughStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleSingle]};
    
    //下划线
    
//    NSDictionary *attribtDic = @{NSUnderlineStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleSingle]};
    
    NSMutableAttributedString *attribtStr = [[NSMutableAttributedString alloc]initWithString:@"￥2250" attributes:attribtDic];
    
    self.reducePrice.attributedText = attribtStr;
    
    
    
    
    [self.changeBut mas_updateConstraints:^(MASConstraintMaker *make) {
        
        make.height.equalTo(@0);
        make.left.equalTo(self.detailLabel.mas_right).offset(-.5);
        make.top.equalTo(self.detailLabel.mas_bottom).offset(10);
        make.width.equalTo(@0);
        
        
    }];
    [self.addBut mas_updateConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.contentView.mas_bottom).offset(-10);
        make.right.mas_equalTo(self.contentView.mas_right).offset(-10);
        make.height.equalTo(@0);
        make.width.equalTo(@0);
    
    
        
    }];
    
    [self.numbField mas_updateConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.contentView.mas_bottom).offset(-10);
        make.right.equalTo(self.addBut.mas_left).offset(.5);
        make.height.equalTo(@0);
        make.width.equalTo(@0);
        
        
    }];
    
    
    [self.reduceBut mas_updateConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.contentView.mas_bottom).offset(-10);
        make.right.equalTo(self.numbField.mas_left).offset(.5);
        make.height.equalTo(@0);
        make.width.equalTo(@0);

        
        
    }];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
//-(void)layoutSubviews{
//    self.detailLabel.text = @"skldkdlfklfd";
    
//}
@end
