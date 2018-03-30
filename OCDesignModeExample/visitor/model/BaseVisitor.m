//
//  BaseVisitor.m
//  OCDesignModeExample
//
//  Created by huangmingwei on 16/12/19.
//  Copyright © 2016年 mw. All rights reserved.
//

#import "BaseVisitor.h"
#import "BaseElement.h"

@implementation BaseVisitor
- (void)showElement:(BaseElement *)element {
    NSLog(@"visitor %@ %@", NSStringFromClass([self class]), [element showContent]);
}
@end
