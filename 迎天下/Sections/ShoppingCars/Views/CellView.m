//
//  CellView.m
//  迎天下
//
//  Created by wanglulu on 15/10/20.
//  Copyright © 2015年 wanglulu. All rights reserved.
//

#import "CellView.h"

@implementation CellView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self addViews];
        
    }
    return self;
}

-(void)addViews{
    
    self.selectBut = [UIButton buttonWithType:UIButtonTypeCustom];
    self.selectBut.backgroundColor = [UIColor magentaColor];
    [self addSubview:self.selectBut];
    [self.selectBut mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.mas_centerY);
        make.right.equalTo(self.mas_right).offset(-20);
        make.size.mas_equalTo(CGSizeMake(15, 15));
    
    }];
    
    
    self.reasonLabel = [UILabel new];
    [self addSubview:self.reasonLabel];
    self.reasonLabel.backgroundColor = [UIColor orangeColor];
    [self.reasonLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.mas_centerY);
        make.left.equalTo(self.mas_left).offset(10);
        make.right.equalTo(self.selectBut.mas_left).offset(-10);
        make.height.equalTo(@20);
        
        
        
    }];
    
    
    
    
    
    
    
    
    
    
}
@end
