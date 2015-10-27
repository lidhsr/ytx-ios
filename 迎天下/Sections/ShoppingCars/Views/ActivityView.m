//
//  ActivityView.m
//  迎天下
//
//  Created by wanglulu on 15/10/26.
//  Copyright © 2015年 wanglulu. All rights reserved.
//

#import "ActivityView.h"

@implementation ActivityView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self addViews];
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

-(void)addViews{
    self.activityLabel = [UILabel new];
    [self addSubview:self.activityLabel];
    self.activityLabel.text = @"活动";
    self.activityLabel.textAlignment = NSTextAlignmentCenter;
    self.activityLabel.backgroundColor = [UIColor orangeColor];
    self.activityLabel.font = [UIFont systemFontOfSize:13];
    [self.activityLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(8);
        make.left.equalTo(self.mas_left).offset(10);
        make.size.mas_equalTo(CGSizeMake(40, 15));
    
    }];
    
    self.detailLabel = [UILabel new];
    [self addSubview:self.detailLabel];
    self.detailLabel.text = @"nnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbbfdffffffffffffffffffffffffnbnbnbnbnnbnbnb";
    self.detailLabel.font = [UIFont systemFontOfSize:19];
    self.detailLabel.backgroundColor = [UIColor grayColor];
    [self.detailLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset (8);
        make.left.equalTo(self.activityLabel.mas_right).offset(10);
        make.width.equalTo(@260);
    
    }];
    
    
    
    
    
    
}
@end
