//
//  ShoppingBasicViewController.m
//  迎天下
//
//  Created by wanglulu on 15/10/16.
//  Copyright © 2015年 wanglulu. All rights reserved.
//

#import "ShoppingBasicViewController.h"
#import "Masonry.h"
#import "BottomView.h"
#import "ShoppingListTableViewCell.h"
#import "ActivityTableViewCell.h"
#import "SelectModelView.h"
#import "EditorBottomView.h"
#import "EmptyViewController.h"
#import "HeaderView.h"
#import "ActivityView.h"
#import "SlideTableViewCell.h"
#import "StoreTableViewCell.h"

@interface ShoppingBasicViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,assign)BOOL isAllSelect;
@property(nonatomic,assign)BOOL isAll;
@property(nonatomic,assign)BOOL isSelectOk;
@property(nonatomic,strong)BottomView * bottomview;
@property(nonatomic,strong)EditorBottomView * editorView;
@property(nonatomic,assign)BOOL isHighLight;
@property(nonatomic,strong)SelectModelView * seleModView;
@property(nonatomic,strong)HeaderView * headerView1;
@property(nonatomic,strong)HeaderView * headerView2;
@property(nonatomic,strong)ActivityView * activityView;

@end

@implementation ShoppingBasicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.basicTableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
        self.basicTableView.contentInset = UIEdgeInsetsMake(-35, 0, 0, 0);
    [self.view addSubview:self.basicTableView];
//    self.headerView1 = [[HeaderView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_W, 40)];
//    self.headerView2 = [[HeaderView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_W, 40)];
//    self.activityView =  [[ActivityView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_W,40)];
        self.tabBarController.tabBar.selectedItem.selectedImage = [[UIImage imageNamed:@"shopping_bar"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.navigationController.navigationBar.translucent = NO;
    self.navigationController.navigationBar.titleTextAttributes =[NSDictionary dictionaryWithObjectsAndKeys:
                                                                  [UIFont boldSystemFontOfSize:20],UITextAttributeFont,
                                                                  [UIColor colorWithRed:1.000 green:0.502 blue:0.000 alpha:1.000],UITextAttributeTextColor ,
                                                                  [NSValue valueWithCGSize:CGSizeMake(0.0, 0.0)] , UITextAttributeTextShadowOffset ,
                                                                  [UIColor whiteColor] ,UITextAttributeTextShadowColor ,
                                                                  nil];
    
    self.basicTableView .backgroundColor = [UIColor colorWithWhite:0.902 alpha:1.000];
//    self.basicTableView.backgroundColor = [UIColor blueColor];
    self.basicTableView.delegate = self;
    self.basicTableView.dataSource =self;
    [self.basicTableView registerNib:[UINib nibWithNibName:@"ShoppingListTableViewCell" bundle:nil] forCellReuseIdentifier:@"shoppinglist"];
    [self.basicTableView registerNib:[UINib nibWithNibName:@"ActivityTableViewCell" bundle:nil] forCellReuseIdentifier:@"activity"];
    [self.basicTableView registerNib:[UINib nibWithNibName:@"SlideTableViewCell" bundle:nil] forCellReuseIdentifier:@"SlideTableView"];
    [self.basicTableView registerNib:[UINib nibWithNibName:@"StoreTableViewCell" bundle:nil] forCellReuseIdentifier:@"StoreTableView"];
    self.bottomview = [[BottomView alloc] initWithFrame:CGRectMake(0, SCREEN_H-169, SCREEN_W, 60)];
    [self.view addSubview:self.bottomview];
    self.editorView = [[EditorBottomView alloc] initWithFrame:CGRectMake(0, SCREEN_H-169, SCREEN_W, 60)];
    
//    self.bottomview.backgroundColor = [UIColor colorWithRed:1.000 green:0.773 blue:0.824 alpha:1.000];
    [self.bottomview.allSelButton addTarget:self action:@selector(selectAllRows:) forControlEvents:UIControlEventTouchUpInside];
    [self.editorView.allSelectBut addTarget:self action:@selector(selectAllRows:) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"编辑" style:UIBarButtonItemStylePlain target:self action:@selector(editorOrder:)];
    
     self.seleModView = [[SelectModelView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_W, SCREEN_H-109)];
    [self.seleModView.sureBut addTarget:self action:@selector(removeFromSuperView:) forControlEvents:UIControlEventTouchUpInside];
    
    }


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if (section == 0) {
        return 4;
    }else if(section == 1){
        return 0;
    }
    

    return 0;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            StoreTableViewCell * storeCell = [tableView dequeueReusableCellWithIdentifier:@"StoreTableView" forIndexPath:indexPath];\
            return storeCell;
        }else if (indexPath.row == 3){
            ActivityTableViewCell * activity = [tableView dequeueReusableCellWithIdentifier:@"activity"];
            if (!self.isSelectOk) {
            [activity.couponsLabel mas_updateConstraints:^(MASConstraintMaker *make) {
                    make.top.equalTo(activity.dottedlineLabel.mas_bottom).offset(18);
                    make.left.equalTo(activity.mas_left).offset(10);
                    make.right.equalTo(activity.rightImage.mas_left).offset(-10);
                    make.height.equalTo(@0);
                    
                    
                }];
   
            [activity.rightImage mas_updateConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(activity.dottedlineLabel.mas_bottom).offset(18);
                make.right.equalTo(activity.mas_right).offset(-10);
                make.size.mas_equalTo(CGSizeMake(0, 0));
                
                
            }];
                
                
                
                
                
                
            }else {
                [activity.rightImage mas_updateConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(activity.dottedlineLabel.mas_bottom).offset(18);
                make.right.equalTo(activity.mas_right).offset(-10);
                make.size.mas_equalTo(CGSizeMake(24, 24));
                
                
            }];

                [activity.couponsLabel mas_updateConstraints:^(MASConstraintMaker *make) {
                    make.top.equalTo(activity.dottedlineLabel.mas_bottom).offset(18);
                    make.left.equalTo(activity.mas_left).offset(10);
                    make.right.equalTo(activity.rightImage.mas_left).offset(-10);
                    make.height.equalTo(@24);
                    
                    
                }];
               
   
                
                
            }
            
            
            return activity;
            
        }
        
        
        else{
            SlideTableViewCell * ltViewCell = [tableView dequeueReusableCellWithIdentifier:@"SlideTableView"];
            [ltViewCell.selectBut addTarget:self action:@selector(changeButState:) forControlEvents:UIControlEventTouchUpInside];
            ltViewCell.selectBut.tag = indexPath.row;
            ltViewCell.reduceLabel.text = @"dfdfdfdfd";
            [ltViewCell.downBut addTarget:self action:@selector(selectModel:) forControlEvents:UIControlEventTouchUpInside];
            if (!self.isSelectOk) {
                [ltViewCell.nameLabel mas_updateConstraints:^(MASConstraintMaker *make) {
                    make.top.equalTo(ltViewCell.mas_top).offset(20);
                    make.left.equalTo(ltViewCell.shoppingImage.mas_right).offset(10);
                    make.width.equalTo(@160);
                    
                }];
                [ltViewCell.detailLabel mas_updateConstraints:^(MASConstraintMaker *make) {
                    make.bottom.equalTo(ltViewCell.mas_bottom).offset(-20);
                    make.left.equalTo(ltViewCell.shoppingImage.mas_right).offset(10);
                    make.height.equalTo(@20);
                    
                    
                }];
                [ltViewCell.downBut mas_updateConstraints:^(MASConstraintMaker *make) {
                    make.left.equalTo(ltViewCell.detailLabel.mas_right).offset(-.5);
                    make.bottom.equalTo(ltViewCell.mas_bottom).offset(-20);
                    make.size.mas_equalTo(CGSizeMake(0, 0));
                    
                }];
                [ltViewCell.numberLabel mas_updateConstraints:^(MASConstraintMaker *make) {
                    make.right.equalTo(ltViewCell.mas_right).offset(-8);
                    make.top.equalTo(ltViewCell.reduceLabel.mas_bottom).offset(5);
                    make.height.equalTo(@15);
                    
                }];
                [ltViewCell.addBut removeFromSuperview];
                [ltViewCell.numbField removeFromSuperview];
                [ltViewCell.reduceBut removeFromSuperview];
                ltViewCell.detailLabel.layer.borderColor = [UIColor clearColor].CGColor;
                ltViewCell.detailLabel.layer.borderWidth = .5;
                
                
            }else {
                [ltViewCell.nameLabel mas_updateConstraints:^(MASConstraintMaker *make) {
                    make.top.equalTo(ltViewCell.mas_top).offset(20);
                    make.left.equalTo(ltViewCell.shoppingImage.mas_right).offset(10);
                    make.width.equalTo(@0);
                }];
                [ltViewCell.detailLabel mas_updateConstraints:^(MASConstraintMaker *make) {
                    make.bottom.equalTo(ltViewCell.mas_bottom).offset(-20);
                    make.left.equalTo(ltViewCell.shoppingImage.mas_right).offset(10);
                    make.width.equalTo(@150);
                    make.height.equalTo(@25);
                }];
                [ltViewCell.downBut mas_updateConstraints:^(MASConstraintMaker *make) {
                    make.left.equalTo(ltViewCell.detailLabel.mas_right).offset(-.5);
                    make.bottom.equalTo(ltViewCell.mas_bottom).offset(-20);
                    make.size.mas_equalTo(CGSizeMake(25, 25));
                    
                }];
                [ltViewCell.numberLabel mas_updateConstraints:^(MASConstraintMaker *make) {
                    make.right.equalTo(ltViewCell.mas_right).offset(-8);
                    make.top.equalTo(ltViewCell.reduceLabel.mas_bottom).offset(5);
                    make.height.equalTo(@0);
                    
                }];
                ltViewCell.addBut =     [UIButton buttonWithType:UIButtonTypeCustom];
                [ltViewCell.addBut setImage:[UIImage imageNamed:@"shopping_reduce"] forState:UIControlStateNormal];
                [ltViewCell.moveContentView addSubview:ltViewCell.addBut];
                ltViewCell.addBut.frame = CGRectMake(125, 20,25, 25);
                ltViewCell.numbField = [[UITextField alloc] initWithFrame:CGRectMake(149.5, 20, 125, 25)];
                [ltViewCell.moveContentView addSubview:ltViewCell.numbField ];
                ltViewCell.reduceBut =     [UIButton buttonWithType:UIButtonTypeCustom];
                [ltViewCell.moveContentView addSubview:ltViewCell.reduceBut];
                [ltViewCell.reduceBut setFrame:CGRectMake(274, 20, 25, 25)];
                [ltViewCell.reduceBut setImage:[UIImage imageNamed:@"shopping_add"] forState:UIControlStateNormal];
                
                
                ltViewCell.reduceBut.layer.borderColor = [UIColor grayColor].CGColor;
                ltViewCell.reduceBut.layer.borderWidth = .5;
                ltViewCell.numbField.layer.borderWidth = .5;
                ltViewCell.numbField.layer.borderColor = [UIColor grayColor].CGColor;
                ltViewCell.numbField.textAlignment = NSTextAlignmentCenter;
                ltViewCell.addBut.layer.borderWidth = .5;
                ltViewCell.addBut.layer.borderColor = [UIColor grayColor].CGColor;
                ltViewCell.detailLabel.layer.borderColor = [UIColor grayColor].CGColor;
                //            ltViewCell.detailLabel.height = 400;
                ltViewCell.detailLabel.layer.borderWidth = .5;
                ltViewCell.detailLabel.font = [UIFont systemFontOfSize:15];
                ltViewCell.downBut.layer.borderWidth = .5;
                ltViewCell.downBut.layer.borderColor = [UIColor grayColor].CGColor;
            }
            
            
            
            if (isSelect[indexPath.row]) {
                [ltViewCell.selectBut setImage:[[UIImage imageNamed:@"shopping_select_01"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
                
                
            }else{
                
                [ltViewCell.selectBut setImage:[[UIImage imageNamed:@"shopping_select_02"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
            }
            if (self.isAll) {
                if (self.isAllSelect ) {
                    [ltViewCell.selectBut setImage:[[UIImage imageNamed:@"shopping_select_01"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
                    
                }else{
                    
                    [ltViewCell.selectBut setImage:[[UIImage imageNamed:@"shopping_select_02"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
                    
                }
                
            }
            //        [shoppingList.changeBut addTarget:self action:@selector(selectModel:) forControlEvents:UIControlEventTouchUpInside];
            
            ltViewCell.priceLabel.font =  [UIFont fontWithName:@"Arial-Bold" size:10.0];
            //        [shoppingList.addBut addTarget:self action:@selector(addShoppingNumb:) forControlEvents:UIControlEventTouchUpInside];
            return ltViewCell;

        }
    }else{
        
        
     }
    
    
    ActivityTableViewCell * activity = [tableView dequeueReusableCellWithIdentifier:@"SlideTableView"];
            return activity;
    
  
    
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath  {
    if (indexPath.section == 0) {
        switch (indexPath.row) {
            case 0:
                return 40;
             case 3:
                if (self.isSelectOk) {
                    return 120;
                }
                return 60;
            default:
                break;
        }
        return 100;
    }else if (indexPath.section == 1){
        return 100;
    }
    return 0;
    

}
//改变左滑删除字
-(NSString*)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    return @"删除";
}





//返回区头高度
//-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
//    
//    return 40;
//}
////返回区尾高度
//-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
//    return 80;
//    
//    
//}

//返回区头视图
//-(HeaderView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
//    if (section == 0) {
//        return self.headerView1;
//    }
//    
//        return self.headerView2;
//    
//
//}

//-(ActivityView*)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
//    if (section == 0) {
//        return self.activityView;
//
//    }
//    return nil;
//    
//    
//}
//点击选中按钮是触发
-(void)changeButState:(UIButton*)sender{
    self.isAll = NO;
    isSelect[sender.tag] = !isSelect[sender.tag];
    [self.basicTableView reloadData];
    NSIndexPath *nbpath = [NSIndexPath indexPathForRow:sender.tag inSection:0];
    [self.basicTableView  reloadRowsAtIndexPaths:@[nbpath] withRowAnimation:UITableViewRowAnimationNone];
    
}
//点击全选时触发
-(void)selectAllRows:(UIButton*)sender{
    self.isAll = YES;

    self.isAllSelect = !self.isAllSelect;
        [self.basicTableView   reloadData];
    if (self.isHighLight) {
        [self.bottomview.allSelButton setImage:[[UIImage imageNamed:@"shopping_select_02"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
        [self.editorView.allSelectBut setImage:[[UIImage imageNamed:@"shopping_select_02"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
        
    }else{
        [self.bottomview.allSelButton setImage:[[UIImage imageNamed:@"shopping_select_01"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
        [self.editorView.allSelectBut setImage:[[UIImage imageNamed:@"shopping_select_01"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
        
    }
    self.isHighLight = !self.isHighLight;
}

//点击编辑时触发
-(void)editorOrder:(UIBarButtonItem*)sender{
    self.isSelectOk = !self.isSelectOk;

    [self.basicTableView reloadData];
    if (self.isSelectOk) {
        self.navigationItem.rightBarButtonItem.title= @"完成";
        [self.view insertSubview:self.editorView aboveSubview:self.bottomview];
        [self.bottomview removeFromSuperview];
            }else {
        [self.editorView removeFromSuperview];
        [self.view insertSubview:self.bottomview aboveSubview:self.basicTableView];
        self.navigationItem.rightBarButtonItem.title= @"编辑";
        
    }

}


-(void)selectModel:(UIButton*)sender{
    [self.view insertSubview:self.seleModView aboveSubview:self.bottomview];

    
    
    
    
}


-(void)addShoppingNumb:(UIButton*)sender{
    EmptyViewController * empyVC = [EmptyViewController new];
    [self.navigationController pushViewController:empyVC animated:YES];
    
    
}
-(void)removeFromSuperView:(UIButton*)sender{
    
    
    [self.seleModView removeFromSuperview];
   


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//

@end
//#pragma mark - Navigation
//
//// In a storyboard-based application, you will often want to do a little preparation before navigation
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    // Get the new view controller using [segue destinationViewController].
//    // Pass the selected object to the new view controller.
//}
//*
