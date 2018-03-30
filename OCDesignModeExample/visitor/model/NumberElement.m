//
//  NumberElement.m
//  OCDesignModeExample
//
//  Created by huangmingwei on 16/12/19.
//  Copyright © 2016年 mw. All rights reserved.
//

#import "NumberElement.h"

@implementation NumberElement
- (NSString *)showContent {
    return [NSString stringWithFormat:@"%@ myNumber is %@", [super showContent], self.myNumber];
}
@end
