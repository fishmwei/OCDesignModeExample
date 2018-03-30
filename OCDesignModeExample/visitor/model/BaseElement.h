//
//  BaseElement.h
//  OCDesignModeExample
//
//  Created by huangmingwei on 16/12/19.
//  Copyright © 2016年 mw. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BaseVisitor;
@interface BaseElement : NSObject
-(void)accept:(BaseVisitor *)visitor;

- (NSString *)showContent;
@end
