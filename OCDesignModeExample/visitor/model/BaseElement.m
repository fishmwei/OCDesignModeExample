//
//  BaseElement.m
//  OCDesignModeExample
//
//  Created by huangmingwei on 16/12/19.
//  Copyright © 2016年 mw. All rights reserved.
//

#import "BaseElement.h"
#import "BaseVisitor.h"

@implementation BaseElement
-(void)accept:(BaseVisitor *)visitor {
    [visitor showElement:self];
}

- (NSString *)showContent {
    return [NSString stringWithFormat:@"show content of %@", NSStringFromClass([self class])];
}
@end
