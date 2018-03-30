//
//  memenToCreateTaker.m
//  OCDesignModeExample
//
//  Created by mingwei on 2017/1/11.
//  Copyright © 2017年 mw. All rights reserved.
//

#import "memenToCreateTaker.h"
#import "memenTo.h"

@interface memenToCreateTaker ()
@property (nonatomic, strong) memenTo *lastState;
@end

@implementation memenToCreateTaker
- (void)createMemto:(memenTo *)state {
    self.lastState = state;
}

- (memenTo *)getMemto {
    return self.lastState;
}


@end
