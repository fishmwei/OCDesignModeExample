//
//  CashContext.m
//  OCDesignModeExample
//
//  Created by mingwei on 2017/1/10.
//  Copyright © 2017年 mw. All rights reserved.
//

#import "CashContext.h"

@implementation CashContext
- (CGFloat)getResult:(CGFloat)money {
    return [self.casher acceptCash:money];
}

@end
