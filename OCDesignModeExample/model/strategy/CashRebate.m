//
//  CashRebate.m
//  OCDesignModeExample
//
//  Created by mingwei on 2017/1/10.
//  Copyright © 2017年 mw. All rights reserved.
//

#import "CashRebate.h"

@interface CashRebate ()
@property (nonatomic, assign) CGFloat rebate;

@end
@implementation CashRebate
- (instancetype)initWithRebate:(CGFloat)rebate {
    self = [super init];
    if (self) {
        self.rebate = rebate;
    }
    
    return self;
}

- (instancetype)init {
    return [self initWithRebate:1.0f];
}

- (CGFloat)acceptCash:(CGFloat)normal {
    return normal * self.rebate;
}

@end
