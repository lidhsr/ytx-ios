//
//  EditorBottomView.m
//  迎天下
//
//  Created by wanglulu on 15/10/19.
//  Copyright © 2015年 wanglulu. All rights reserved.
//

#import "EditorBottomView.h"

@implementation EditorBottomView

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
    self.allSelectBut = [UIButton buttonWithType:UIButtonTypeCustom];
    [self addSubview:self.allSelectBut ];
    [self.allSelectBut setImage:[UIImage imageNamed:@"shopping_select_02"] forState:UIControlStateNormal];
    [self.allSelectBut mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.mas_centerY);
        make.left.equalTo(self.mas_left).offset(20);
        make.size.mas_equalTo(CGSizeMake(15, 15));
        
    }];
    self.deleteBut = [UIButton buttonWithType:UIButtonTypeCustom];
    self.deleteBut.backgroundColor = [UIColor yellowColor];
    [self.deleteBut setTitle:@"删除" forState:UIControlStateNormal];
    [self addSubview:self.deleteBut];
    [self.deleteBut mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.mas_right);
        make.top.equalTo(self.mas_top);
        make.bottom.equalTo(self.mas_bottom);
        make.width.equalTo(@100);
        
    }];
    self.movefavoritesBut = [UIButton buttonWithType:UIButtonTypeCustom];
    [self addSubview:self.movefavoritesBut];
    [self.movefavoritesBut setTitle:@"移入收藏夹" forState:UIControlStateNormal];
    self.movefavoritesBut.backgroundColor = [UIColor redColor];
    [self.movefavoritesBut mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.deleteBut.mas_left).offset(-10);
        make.top.equalTo(self.mas_top);
        make.bottom.equalTo(self.mas_bottom);
        make.width.equalTo(@100);
        
    }];
    
    
    
    
    
    
    
}
@end
