//
//  SelectAddressTableViewController.m
//  迎天下
//
//  Created by wanglulu on 15/10/22.
//  Copyright © 2015年 wanglulu. All rights reserved.
//

#import "SelectAddressTableViewController.h"
#import "AddressTableViewCell.h"
#import "TwoButTableViewCell.h"
#import "TwoLabelTableViewCell.h"
@interface SelectAddressTableViewController ()

@end

@implementation SelectAddressTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    self.tableView.contentInset = UIEdgeInsetsMake(-35, 0, 0, 0);
    [self.tableView registerNib:[UINib nibWithNibName:@"AddressTableViewCell" bundle:nil] forCellReuseIdentifier:@"AddressTableView"];
    [self.tableView registerNib:[UINib nibWithNibName:@"TwoButTableViewCell" bundle:nil] forCellReuseIdentifier:@"TwoButTableView"];
    [self.tableView registerNib:[UINib nibWithNibName:@"TwoLabelTableViewCell" bundle:nil] forCellReuseIdentifier:@"TwoLabelTable"];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    
    return 3;


}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    if (section == 0) {
        return 2;
    }else if(section == 1){
        
        return 2;
    }else{
        return 1;
        
    }

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0 || indexPath.section == 1) {
        if (indexPath.row == 0) {
            AddressTableViewCell * addressCell = [tableView dequeueReusableCellWithIdentifier:@"AddressTableView" forIndexPath:indexPath];
            return addressCell;
        }else{
            TwoButTableViewCell * oneCell = [tableView dequeueReusableCellWithIdentifier:@"TwoButTableView" forIndexPath:indexPath];
            
            return oneCell;
            
            
            
        }
    }else{
TwoLabelTableViewCell * twoLabelCell = [tableView dequeueReusableCellWithIdentifier:@"TwoLabelTable" forIndexPath:indexPath];
        twoLabelCell.twoLabel.textAlignment = NSTextAlignmentCenter;
        twoLabelCell.twoLabel.text = @"➕添加收货地址";
        
        return twoLabelCell;
    
    
    }
    

    

}



-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0 || indexPath.section == 1) {
        if (indexPath.row == 0) {
            return 60;
        }else{
            return 40;
        }
    }else{
        
        
        return 60;
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here, for example:
    // Create the next view controller.
    <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:<#@"Nib name"#> bundle:nil];
    
    // Pass the selected object to the new view controller.
    
    // Push the view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
