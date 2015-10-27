//
//  BottomView.m
//  迎天下
//
//  Created by wanglulu on 15/10/16.
//  Copyright © 2015年 wanglulu. All rights reserved.
//

#import "BottomView.h"
#import "Masonry.h"
@implementation BottomView

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
    self.allSelButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    self.allSelButton.backgroundColor = [UIColor redColor];
    [self addSubview:self.allSelButton];
    [self.allSelButton setImage:[[UIImage imageNamed:@"shopping_select_02"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    [self.allSelButton mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).offset(20);
        make.centerY.mas_equalTo(self.mas_centerY);
        make.size.mas_equalTo(CGSizeMake(15, 15));
    }];
    self.allSelLabel = [UILabel new];
    self.allSelLabel.backgroundColor = [UIColor yellowColor];
    self.allSelLabel.text = @"全选";
    self.allSelLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:self.allSelLabel];
    [self.allSelLabel mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.mas_centerY);
        make.left.equalTo(self.allSelButton.mas_right).offset(10);
        make.width.equalTo(@40);
        make.height.equalTo(@20);
    }];
    self.settlement = [UIButton buttonWithType:UIButtonTypeCustom];
    [self addSubview:self.settlement];
    [self.settlement setTitle:@"结算" forState:UIControlStateNormal];
    self.settlement.backgroundColor = [UIColor greenColor];
    [self.settlement mas_remakeConstraints:^(MASConstraintMaker *make) {
//        make.centerX.equalTo(self.mas_centerX);
        make.top.equalTo(self.mas_top);
        make.bottom.equalTo(self.mas_bottom);
        make.right.equalTo(self.mas_right);
        make.width.equalTo(@100);
        
    }];

    self.countNum = [UILabel new];
    [self addSubview:self.countNum];
    self.countNum.backgroundColor = [UIColor grayColor];
    self.countNum.text = [NSString  stringWithFormat:@"￥1,7878"];
    self.countNum.textAlignment = NSTextAlignmentLeft;
    [self.countNum mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.settlement.mas_left).offset(-10);
        make.top.equalTo(self.mas_top).offset(10);
        
        make.height.equalTo(@20);
        
    }];
    self.countLabel = [UILabel new];
    [self addSubview:self.countLabel];
    self.countLabel.backgroundColor = [UIColor orangeColor];
    self.countLabel.textAlignment = NSTextAlignmentRight;
    [self.countLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.countNum.mas_left);
        make.top.equalTo(self.mas_top).offset(10);
        make.size.mas_equalTo(CGSizeMake(100, 20));
        
        
    }];
    
    self.freightLabel = [UILabel new];
    [self addSubview:self.freightLabel];
    self.freightLabel.backgroundColor = [UIColor magentaColor];
    self.freightLabel.text = @"不含运费";
    self.freightLabel.textAlignment = NSTextAlignmentRight;
    [self.freightLabel mas_updateConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.countNum.mas_bottom).offset(5);
        make.right.equalTo(self.settlement.mas_left).offset(-10);
        make.width.equalTo(@100);
        make.height.equalTo(@15);
        
    }];
    
    
}
@end
