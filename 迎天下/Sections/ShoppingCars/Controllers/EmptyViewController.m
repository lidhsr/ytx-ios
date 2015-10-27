//
//  EmptyViewController.m
//  迎天下
//
//  Created by wanglulu on 15/10/23.
//  Copyright © 2015年 wanglulu. All rights reserved.
//

#import "EmptyViewController.h"
#import "ShoppingDetailCollectionViewCell.h"

@interface EmptyViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

@end

@implementation EmptyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.freeShoppingBut.layer.borderWidth = 1.5;
    self.freeShoppingBut.layer.cornerRadius = 3;
    self.freeShoppingBut.layer.borderColor = [UIColor blackColor].CGColor;
UICollectionViewFlowLayout * layout = [[UICollectionViewFlowLayout alloc] init];
    
    self.recommendCv.backgroundColor = [UIColor whiteColor];
    [self.recommendCv registerNib:[UINib nibWithNibName:@"ShoppingDetailCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"ShoppingDetailCollectionView"];
      layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.recommendCv.dataSource = self;
    self.recommendCv.delegate = self;




}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return 10;
    
    
}
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    
    return 1;
}


-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath   {
    
    ShoppingDetailCollectionViewCell * ShoppingDetailCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ShoppingDetailCollectionView" forIndexPath:indexPath];
    ShoppingDetailCell.backgroundColor = [UIColor redColor];
    return ShoppingDetailCell;
    
    
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{

    
    
    return UIEdgeInsetsMake(10, 10, 10, 10);
    
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
    return CGSizeMake(125, 140);
    
}



//- (void)scrollViewDidScroll:(UIScrollView *)_scrollView
//{
////    无限循环....
//    float targetX = _scrollView.contentOffset.x;
//    int numCount = [self.recommendCv numberOfItemsInSection:0];
//    float ITEM_WIDTH = _scrollView.frame.size.width;
//    
//    if (numCount>=10)
//    {
//        if (targetX < ITEM_WIDTH/2) {
//            [_scrollView setContentOffset:CGPointMake(targetX+ITEM_WIDTH *numCount, 0)];
//        }
//        else if (targetX >ITEM_WIDTH/2+ITEM_WIDTH *numCount)
//        {
//            [_scrollView setContentOffset:CGPointMake(targetX-ITEM_WIDTH *numCount, 0)];
//        }
//    }
//    
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
