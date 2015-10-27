//
//  CancelOrderView.h
//  迎天下
//
//  Created by wanglulu on 15/10/20.
//  Copyright © 2015年 wanglulu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CellView.h"
@interface CancelOrderView : UIView
@property(nonatomic,strong)UIView * backView;
@property(nonatomic,strong)UIView * titleView;
@property(nonatomic,strong)UILabel * titleLabel;
@property(nonatomic,strong)UIView * goldLine;
@property(nonatomic,strong)CellView * cell1;
@property(nonatomic,strong)CellView * cell2;
@property(nonatomic,strong)CellView * cell3;
@property(nonatomic,strong)CellView * cell4;
@property(nonatomic,strong)CellView * cell5;
@property(nonatomic,strong)UIButton * cancleBut;
@property(nonatomic,strong)UIButton * sureBut;
@end
