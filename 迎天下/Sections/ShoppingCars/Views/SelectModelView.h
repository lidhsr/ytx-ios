//
//  SelectModelView.h
//  迎天下
//
//  Created by wanglulu on 15/10/19.
//  Copyright © 2015年 wanglulu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SelectModelView : UIView
@property(nonatomic,strong)UIView * backView;
@property(nonatomic,strong)UIImageView * shoppingImage;
@property(nonatomic,strong)UILabel * nameLabel;
@property(nonatomic,strong)UILabel * priceLabel;
@property(nonatomic,strong)UILabel * sizeLabel;
@property(nonatomic,strong)UILabel * colorLabel;
@property(nonatomic,strong)UIButton * sureBut;
@property(nonatomic,strong)UIView * headView;
@property(nonatomic,strong)UIButton * sizeBut;
@property(nonatomic,strong)UIButton * colorBut;
@end
