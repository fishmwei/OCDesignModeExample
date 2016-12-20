//
//  ElementPoolArray.m
//  OCDesignModeExample
//
//  Created by huangmingwei on 16/12/19.
//  Copyright © 2016年 mw. All rights reserved.
//

#import "ElementPoolArray.h"

@implementation ElementPoolArray
- (instancetype)init {
    self = [super init];
    if (self) {
        self.list = [NSMutableArray array];
    }
    
    return self;
}
@end
