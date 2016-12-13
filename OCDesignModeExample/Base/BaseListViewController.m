//
//  BaseListViewController.m
//  OCDesignModeExample
//
//  Created by mingwei on 2016/12/12.
//  Copyright © 2016年 mw. All rights reserved.
//

#import "BaseListViewController.h"

@interface BaseListViewController () {
    BOOL isLoading;
}

@end
@implementation BaseListViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.tableFooterView = [[UIView alloc] init];
    self.refreshControl = [[UIRefreshControl alloc] init];
 
    [self.refreshControl addTarget:self action:@selector(refresh) forControlEvents:UIControlEventValueChanged];
}

#pragma mark - tableView UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.showData.count;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
    
    return cell;
}

- (void)refresh {
    if (isLoading) {
        return;
    }
    
    isLoading = YES;
    [self beginRefresh];
}

- (void)endRefresh {
    [self.refreshControl endRefreshing];
    isLoading = NO;
}

- (void)beginRefresh {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self endRefresh];
    });
}

- (NSMutableArray *)showData {
    NSArray *dataSource = @[];
    if ([self dataSource]) {
        dataSource = [self dataSource];
    }
    
    return [NSMutableArray arrayWithArray:dataSource];
}

- (NSArray *)dataSource {
    return @[];
}

@end
