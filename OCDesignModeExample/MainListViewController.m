//
//  MainListViewController.m
//  OCDesignModeExample
//
//  Created by mingwei on 2016/12/12.
//  Copyright © 2016年 mw. All rights reserved.
//

#import "MainListViewController.h"
#import "RecordViewController.h"
#import "TempletViewController.h"
#import "MediaViewController.h"

@interface MainListViewController ()
@property (nonatomic, retain) NSArray *controllerClasses;
@end

@implementation MainListViewController
- (void)viewDidLoad {
    [super viewDidLoad];
//    self.controllerClasses = @[@"TempletViewController", @"RecordViewController", @"MediaViewController"];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
    cell.textLabel.text = [self.showData objectAtIndex:indexPath.row];
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (self.controllerClasses.count > indexPath.row) {
        NSString *controllerClass = [self.controllerClasses objectAtIndex:indexPath.row];
        Class t = NSClassFromString(controllerClass);
        if (t) {
            UIViewController *vc = [[t alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
    }
}

- (NSArray *)dataSource {
    self.controllerClasses = @[@"TempletViewController", @"RecordViewController", @"MediaViewController", @"VisitorViewController", @"StrategyViewController"];
    return @[@"模板模式", @"备忘录模式", @"中介模式", @"访问者模式", @"策略模式"];
}

@end
