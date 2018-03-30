//
//  CashReturn.m
//  OCDesignModeExample
//
//  Created by mingwei on 2017/1/10.
//  Copyright © 2017年 mw. All rights reserved.
//

#import "CashReturn.h"

@interface CashReturn ()
@property (nonatomic, assign) CGFloat reach;
@property (nonatomic, assign) CGFloat ret;
@end

@implementation CashReturn
- (instancetype)initWithReach:(CGFloat)reach returnBack:(CGFloat)ret {
    self = [super init];
    if (self) {
        self.reach = reach;
        self.ret = ret;
    }
    
    return self;
}

- (instancetype)init {
    return [self initWithReach:0 returnBack:0];
}

- (CGFloat)acceptCash:(CGFloat)normal {
    if (normal > self.reach) {
        normal -= self.ret;
    }
    
    return normal;
}

@end
