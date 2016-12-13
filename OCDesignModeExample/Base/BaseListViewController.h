//
//  BaseListViewController.h
//  OCDesignModeExample
//
//  Created by mingwei on 2016/12/12.
//  Copyright © 2016年 mw. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseListViewController : UITableViewController
@property (nonatomic, retain) NSMutableArray *showData;

- (void)beginRefresh;
- (void)endRefresh;

//子类实现这个方法
- (NSArray *)dataSource;

@end
