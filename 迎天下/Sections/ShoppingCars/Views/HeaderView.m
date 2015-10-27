//
//  HeaderView.m
//  迎天下
//
//  Created by wanglulu on 15/10/26.
//  Copyright © 2015年 wanglulu. All rights reserved.
//

#import "HeaderView.h"

@implementation HeaderView

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
    
    self.storeImage = [UIImageView new];
    [self addSubview:self.storeImage];
//    self.storeImage.backgroundColor = [UIColor orangeColor];
    self.storeImage.image = [[UIImage imageNamed:@"logo"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self.storeImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(8);
        make.left.equalTo(self.mas_left).offset(10);
        make.size.mas_equalTo(CGSizeMake(24, 24));
        
        
    }];
    
    
    self.rightImage = [UIImageView new];
    [self addSubview:self.rightImage];
    self.rightImage.image = [UIImage imageNamed:@"shopping_right"];
//    self.rightImage.backgroundColor = [UIColor blueColor];
    [self.rightImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.mas_right).offset(-10);
        make.top.equalTo(self.mas_top).offset(8);
        make.size.mas_equalTo(CGSizeMake(24, 24));
        
        
    }];
    
    self.nameLabel = [UILabel new];
    [self addSubview:self.nameLabel];
    self.nameLabel.text = @"牛B的名牌西服";
//    self.nameLabel.backgroundColor = [UIColor magentaColor];
    [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.storeImage.mas_right).offset(10);
        make.top.equalTo(self.mas_top).offset(10);
        make.bottom.equalTo(self.mas_bottom).offset(-10);
        make.right.equalTo(self.rightImage.mas_left).offset(-10);
        
        
    }];
    
    
    
    
}
@end
