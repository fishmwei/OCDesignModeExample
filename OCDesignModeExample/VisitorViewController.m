//
//  VisitorViewController.m
//  OCDesignModeExample
//
//  Created by huangmingwei on 16/12/19.
//  Copyright © 2016年 mw. All rights reserved.
//

#import "VisitorViewController.h"
#import "VisitorA.h"
#import "VisitorB.h"
#import "ElementPoolArray.h"
#import "StringElement.h"
#import "NumberElement.h"

@interface VisitorViewController ()
@property (nonatomic, retain) ElementPoolArray *elements;
@property (nonatomic, retain) VisitorA *aVisitor;
@property (nonatomic, retain) VisitorB *bVisitor;


@end

@implementation VisitorViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.elements = [[ElementPoolArray alloc] init];
    for (NSInteger i = 0; i < 5; i++) {
        StringElement *strEle = [[StringElement alloc] init];
        strEle.myStr = [NSString stringWithFormat:@"I am string %@", @(i)];
        
        NumberElement *nEle = [[NumberElement alloc] init];
        nEle.myNumber = @(i);
        [self.elements.list addObject:strEle];
        [self.elements.list addObject:nEle];
    }
    
    self.aVisitor = [[VisitorA alloc] init];
    self.bVisitor = [[VisitorB alloc] init];
    
    
    [self showElements:self.aVisitor];
    [self showElements:self.bVisitor];
    
}

- (void)showElements:(BaseVisitor *)v {
    for (BaseElement *e in self.elements.list) {
        [e accept:v];
    }
}



@end
