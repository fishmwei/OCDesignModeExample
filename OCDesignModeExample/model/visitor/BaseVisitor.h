//
//  BaseVisitor.h
//  OCDesignModeExample
//
//  Created by huangmingwei on 16/12/19.
//  Copyright © 2016年 mw. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BaseElement;
@interface BaseVisitor : NSObject
- (void)showElement:(BaseElement *)element;
@end
