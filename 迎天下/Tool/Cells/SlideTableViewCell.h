//
//  SlideTableViewCell.h
//  测试滑动删除Cell
//
//  Created by lin on 14-8-7.
//  Copyright (c) 2014年 lin. All rights reserved.
//

// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com

#import <UIKit/UIKit.h>

@protocol SlideTableViewCellDelegate <NSObject>

-(void)didCellWillHide:(id)aSender;
-(void)didCellHided:(id)aSender;
-(void)didCellWillShow:(id)aSender;
-(void)didCellShowed:(id)aSender;
-(void)didCellClickedDeleteButton:(id)aSender;
-(void)didCellClickedMoreButton:(id)aSender;
@end

@interface SlideTableViewCell : UITableViewCell<UIGestureRecognizerDelegate>
{
    CGFloat startLocation;
    BOOL    hideMenuView;
}
@property (strong, nonatomic) IBOutlet UIButton *selectBut;
@property (strong, nonatomic) IBOutlet UIImageView *shoppingImage;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *detailLabel;
@property (strong, nonatomic) IBOutlet UILabel *priceLabel;
@property (strong, nonatomic) IBOutlet UILabel *reduceLabel;
@property (strong, nonatomic) IBOutlet UILabel *numberLabel;

@property (strong, nonatomic) IBOutlet UIView * moveContentView;

@property (strong, nonatomic) IBOutlet UIButton *downBut;
@property (strong, nonatomic) UIButton * addBut;
@property (strong, nonatomic) UITextField * numbField;
@property (strong, nonatomic) UIButton * reduceBut;


@property (nonatomic,assign) id<SlideTableViewCellDelegate> delegate;

-(void)hideMenuView:(BOOL)aHide Animated:(BOOL)aAnimate;
-(void)addControl;
@end
