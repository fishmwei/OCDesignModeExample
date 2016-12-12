//
//  MainListViewController.m
//  OCDesignModeExample
//
//  Created by mingwei on 2016/12/12.
//  Copyright © 2016年 mw. All rights reserved.
//

#import "MainListViewController.h"
#import "RecordViewController.h"

@implementation MainListViewController
- (void)viewDidLoad {
    [super viewDidLoad];
     
    [self.showData addObject:@"模板模式"];
    [self.showData addObject:@"备忘录模式"];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
    cell.textLabel.text = [self.showData objectAtIndex:indexPath.row];
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (indexPath.row == 1) {
        RecordViewController *vc = [[RecordViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }
}


@end
