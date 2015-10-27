//
//  CancelOrderView.m
//  迎天下
//
//  Created by wanglulu on 15/10/20.
//  Copyright © 2015年 wanglulu. All rights reserved.
//

#import "CancelOrderView.h"

#define LABEL_H  ( self.frame.size.height-297)/5
#define BUT_W    ([UIScreen mainScreen].bounds.size.width-101)/2

@interface  CancelOrderView ()
@property(nonatomic,strong)UIView * coverView;
@end

@implementation CancelOrderView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addViews];
            }
    return self;
}


-(void)addViews{
   
    self.coverView = [UIView new];
    self.coverView.backgroundColor = [UIColor blackColor];
    [self addSubview:self.coverView];
    self.backgroundColor = [UIColor clearColor];
    self.coverView.alpha = 0.4;
    [self.coverView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top);
        make.left.equalTo(self.mas_left);
        make.right.equalTo(self.mas_right);
        make.bottom.equalTo(self.mas_bottom);
        
    }];
    self.backView.alpha = 1.0;
    self.backView = [UIView new];
    [self addSubview:self.backView];
    self.backView.backgroundColor = [UIColor grayColor];
    [self.backView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(100);
        make.left.equalTo(self.mas_left).offset(50);
        make.right.equalTo(self.mas_right).offset(-50);
        make.bottom.equalTo(self.mas_bottom).offset(-100);
    
    }];
    
    self.titleView = [UIView new];
    self.titleView.backgroundColor = [UIColor whiteColor];
    [self.backView addSubview:self.titleView];
    [self.titleView mas_makeConstraints:^(MASConstraintMaker *make) {
    
        make.top.equalTo(self.backView.mas_top);
        make.left.equalTo(self.backView.mas_left);
        make.right.equalTo(self.backView.mas_right);
        make.height.equalTo(@40);
        
    }];
////
    self.titleLabel = [UILabel new];
    [self.titleView addSubview:self.titleLabel];
    self.titleLabel.text = @"请选择取消订单的理由";
//    self.titleLabel.textColor = [UIColor orangeColor];
    self.titleLabel.textColor = [UIColor orangeColor];
    
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.titleView.mas_centerY);
        make.left.equalTo(self.titleView.mas_left).offset(10);
        make.right.equalTo(self.titleView.mas_right).offset(-10);
        make.height.equalTo(@20);
    

    }];
//
    self.goldLine = [UIView new];
    self.goldLine.backgroundColor = [UIColor orangeColor];
    [self addSubview:self.goldLine];
    [self.goldLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.titleView.mas_bottom);
        make.left.equalTo(self.backView.mas_left);
        make.right.equalTo(self.backView.mas_right);
        make.height.equalTo(@2);
    }];
    self.cell1 = [CellView new];
    [self.backView addSubview:self.cell1];
    self.cell1.reasonLabel.text =@"我不想买了";
    self.cell1.reasonLabel.font = [UIFont systemFontOfSize:15.0];
    self.cell1.backgroundColor = [UIColor whiteColor];
    [self.cell1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.goldLine.mas_bottom);
        make.left.equalTo(self.backView.mas_left);
        make.right.equalTo(self.backView.mas_right);
        make.height.mas_equalTo([NSNumber numberWithFloat:LABEL_H]);
        
        
    }];
    self.cell2 = [CellView new];
    [self.backView addSubview:self.cell2];
    self.cell2.reasonLabel.text = @"信息填写错误，请重拍";
    self.cell2.reasonLabel.font = [UIFont systemFontOfSize:15.0];

    self.cell2.backgroundColor = [UIColor whiteColor];
    [self.cell2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.cell1.mas_bottom).offset(1);
        make.left.equalTo(self.cell1.mas_left);
        make.right.equalTo(self.cell1.mas_right);
        make.height.equalTo([NSNumber numberWithFloat:LABEL_H]);
        
    }];
    
    self.cell3 = [CellView new];
    [self.backView addSubview:self.cell3];
    self.cell3.reasonLabel.text = @"卖家缺货";
    self.cell3.reasonLabel.font = [UIFont systemFontOfSize:15.0];

    self.cell3.backgroundColor = [UIColor whiteColor];
    [self.cell3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.cell2.mas_bottom).offset(1);
        make.left.equalTo(self.cell2.mas_left);
        make.right.equalTo(self.cell2.mas_right);
        make.height.equalTo([NSNumber numberWithFloat:LABEL_H]);

        
    }];
    
    self.cell4 = [CellView new];
    [self.backView addSubview:self.cell4];
    self.cell4.reasonLabel.text = @"同城见面交易";
    self.cell4.reasonLabel.font = [UIFont systemFontOfSize:15.0];

    self.cell4.backgroundColor = [UIColor whiteColor];
    [self.cell4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.cell3.mas_bottom).offset(1);
        make.left.equalTo(self.cell3.mas_left);
        make.right.equalTo(self.cell3.mas_right);
        make.height.equalTo([NSNumber numberWithFloat:LABEL_H]);
        
        
    }];
    
    self.cell5 = [CellView new];
    [self.backView addSubview:self.cell5];
    self.cell5.reasonLabel.text = @"其他原因";
    self.cell5.reasonLabel.font = [UIFont systemFontOfSize:15.0];

    self.cell5.backgroundColor = [UIColor whiteColor];
    [self.cell5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.cell4.mas_bottom).offset(1);
        make.left.equalTo(self.cell4.mas_left);
        make.right.equalTo(self.cell4.mas_right);
        make.height.equalTo([NSNumber numberWithFloat:LABEL_H]);
        
        
    }];
    
    self.cancleBut = [UIButton  buttonWithType:UIButtonTypeCustom];
    [self.backView addSubview:self.cancleBut];
    [self.cancleBut setTitle:@"取消" forState:UIControlStateNormal];
    [self.cancleBut setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.cancleBut.backgroundColor = [UIColor greenColor];
    [self.cancleBut mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.backView.mas_left);
        make.bottom.equalTo(self.backView.mas_bottom);
        make.size.mas_equalTo(CGSizeMake(BUT_W, 50));
    }];
    self.sureBut = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.backView addSubview:self.sureBut];
    [self.sureBut setTitle:@"确定" forState:UIControlStateNormal];
    [self.sureBut setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.sureBut.backgroundColor = [UIColor whiteColor];
    [self.sureBut mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.backView.mas_right);
        make.bottom.equalTo(self.backView.mas_bottom);
        make.size.mas_equalTo(CGSizeMake(BUT_W, 50));

        
    }];
    
    
    
}
@end
