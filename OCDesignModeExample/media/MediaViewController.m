//
//  MediaViewController.m
//  OCDesignModeExample
//
//  Created by huangmingwei on 16/12/14.
//  Copyright © 2016年 mw. All rights reserved.
//

#import "MediaViewController.h"
#import "TextViewWraper.h"
#import "MediaCenter.h"

@implementation MediaViewController
- (void)dealloc {
    for (UIView *v in self.view.subviews) {
        if ([v isKindOfClass:[TextViewWraper class]]) {
            [[MediaCenter sharedInstance] removeListener:v];
        }
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setupData];
    [self setupUI];
}

- (void)setupData {
    
}

- (void)setupUI {
    [self setAutomaticallyAdjustsScrollViewInsets:NO];
    
    TextViewWraper *tv0 = [[TextViewWraper alloc] init];
    tv0.frame = CGRectMake(20, 100, 100, 60);
    [self.view addSubview:tv0];
    tv0.layer.borderWidth = 1;
    tv0.layer.borderColor = [UIColor blueColor].CGColor;
    tv0.proxy = [MediaCenter sharedInstance];
    [[MediaCenter sharedInstance] addListener:tv0];
    
    TextViewWraper *tv1 = [[TextViewWraper alloc] init];
    tv1.frame = CGRectMake(0, 200, 100, 60);
    [self.view addSubview:tv1];
    tv1.layer.borderWidth = 1;
    tv1.layer.borderColor = [UIColor blueColor].CGColor;
    tv1.proxy = [MediaCenter sharedInstance];
    [[MediaCenter sharedInstance] addListener:tv1];
    
    TextViewWraper *tv2 = [[TextViewWraper alloc] init];
    tv2.frame = CGRectMake(0, 300, 100, 60);
    [self.view addSubview:tv2];
    tv2.layer.borderWidth = 1;
    tv2.layer.borderColor = [UIColor blueColor].CGColor;
    tv2.proxy = [MediaCenter sharedInstance];
    [[MediaCenter sharedInstance] addListener:tv2];
    
    TextViewWraper *tv3 = [[TextViewWraper alloc] init];
    tv3.frame = CGRectMake(0, 400, 100, 60);
    [self.view addSubview:tv3];
    tv3.layer.borderWidth = 1;
    tv3.layer.borderColor = [UIColor blueColor].CGColor;
    tv3.proxy = [MediaCenter sharedInstance];
    [[MediaCenter sharedInstance] addListener:tv3];
    
}
@end
