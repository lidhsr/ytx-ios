//
//  SelectModelView.m
//  迎天下
//
//  Created by wanglulu on 15/10/19.
//  Copyright © 2015年 wanglulu. All rights reserved.
//

#import "SelectModelView.h"
#define But_W         ([UIScreen mainScreen].bounds.size.width-50)/4

@implementation SelectModelView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addViews];
        self.backgroundColor = [UIColor clearColor];
            }
    return self;
}
-(void)addViews{
    
    self.backView = [UIView new];
    [self addSubview:self.backView];
    self.backView.alpha = 1;
    self.backView.backgroundColor = [UIColor whiteColor];
    [self.backView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.mas_bottom);
        make.left.equalTo(self.mas_left);
        make.right.equalTo(self.mas_right);
        make.top.equalTo(self.mas_top).offset(150);
        
    }];
    self.headView = [UIView new];
    [self addSubview:self.headView];
    self.headView.backgroundColor = [UIColor blackColor];
    self.headView.alpha = 0.4;
    [self.headView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top);
        make.left.equalTo(self.mas_left);
        make.right.equalTo(self.mas_right);
        make.height.equalTo(@150);
        
    }];
    
    self.shoppingImage = [UIImageView new];
    [self.backView addSubview:self.shoppingImage];
    self.shoppingImage.backgroundColor = [UIColor redColor];
    [self.shoppingImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.backView.mas_left).offset(10);
        make.top.equalTo(self.backView.mas_top).offset(10);
        make.width.equalTo(@80);
        make.height.equalTo(@80);
        
        
    }];
    self.nameLabel = [UILabel new];
    [self.backView addSubview:self.nameLabel];
    self.nameLabel.backgroundColor = [UIColor greenColor];
    [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.shoppingImage.mas_right).offset(10);
        make.top.equalTo(self.backView.mas_top).offset(20);
        make.right.equalTo(self.backView.mas_right).offset(-10);
        make.height.equalTo(@20);
        
    }];

    self.priceLabel = [UILabel new];
    [self.backView addSubview:self.priceLabel];
    self.priceLabel.backgroundColor = [UIColor blueColor];
    [self.priceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.nameLabel.mas_bottom).offset(20);
        make.right.equalTo(self.backView.mas_right).offset(-10);
        make.left.equalTo(self.shoppingImage.mas_right).offset(10);
        make.height.equalTo(@20);
       
    }];
    
    self.sureBut = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.backView addSubview:self.sureBut];
    [self.sureBut setTitle:@"确定" forState:UIControlStateNormal];
    self.sureBut.backgroundColor = [UIColor yellowColor];
    [self.sureBut mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.backView.mas_bottom);
        make.left.equalTo(self.backView.mas_left);
        make.right.equalTo(self.backView.mas_right);
        make.height.equalTo(@50);
    
        
    }];
    
    self.sizeLabel = [UILabel new];
    [self.backView addSubview:self.sizeLabel];
    self.sizeLabel.text = @"尺码";
    self.sizeLabel.backgroundColor = [UIColor colorWithRed:1.000 green:0.000 blue:0.502 alpha:1.000];
    [self.sizeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.shoppingImage.mas_bottom).offset(20);
        make.left.equalTo(self.backView.mas_left).offset(10);
        make.right.equalTo(self.backView.mas_right).offset(-10);
        make.height.equalTo(@20);
    
    }];
    NSLog(@"______________++++++%lf",self.sizeLabel.frame.origin.y);
    for (int i = 0; i <5; i++) {
        self.sizeBut = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.backView addSubview:self.sizeBut];
        self.sizeBut.tag = 10000+i;
        self.sizeBut.backgroundColor = [UIColor colorWithRed:0.502 green:1.000 blue:0.000 alpha:1.000];
        switch (i) {
            case 0:
                [self.sizeBut setFrame:CGRectMake(10,140, But_W, 40)];
                
                break;
            case 1:
                [self.sizeBut setFrame:CGRectMake(20 + But_W, 140, But_W, 40)];
                break;
            case 2:
                [self.sizeBut setFrame:CGRectMake(30 + But_W*2, 140, But_W, 40)];
                break;
            case 3:
                [self.sizeBut setFrame:CGRectMake(40 + But_W*3, 140, But_W, 40)];
                break;
            case 4:
                [self.sizeBut setFrame:CGRectMake(10, 190, But_W, 40)];
                break;
            default:
                break;
        }
        
        
        
    }
    
    self.colorLabel = [UILabel new];
    [self.backView addSubview:self.colorLabel];
    self.colorLabel.backgroundColor  = [UIColor colorWithRed:0.502 green:0.251 blue:0.000 alpha:1.000];
    [self.colorLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.sizeBut.mas_bottom).offset(10);
        make.left.equalTo(self.backView.mas_left).offset(10);
        make.right.equalTo(self.backView.mas_right).offset(-10);
        make.height.equalTo(@20);
        
    }];
    
    
    for (int j =0; j<2; j++) {
        self.colorBut = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.backView addSubview:self.colorBut];
        self.colorBut.backgroundColor = [UIColor colorWithRed:0.000 green:0.502 blue:0.251 alpha:1.000];
        switch (j) {
            case 0:
                [self.colorBut setFrame:CGRectMake(10, 270, But_W, 40)];
                
                break;
            case 1:
                [self.colorBut setFrame:CGRectMake(20 +But_W, 270, But_W, 40)];
            default:
                break;
        }
    }
    
    
    
}
@end
