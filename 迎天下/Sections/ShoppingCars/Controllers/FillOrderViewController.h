//
//  FillOrderViewController.h
//  迎天下
//
//  Created by wanglulu on 15/10/21.
//  Copyright © 2015年 wanglulu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BottomView.h"

@interface FillOrderViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)BottomView * bottomView;

@end
