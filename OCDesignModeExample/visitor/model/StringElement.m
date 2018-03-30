//
//  StringElement.m
//  OCDesignModeExample
//
//  Created by huangmingwei on 16/12/19.
//  Copyright © 2016年 mw. All rights reserved.
//

#import "StringElement.h"

@implementation StringElement
- (NSString *)showContent {
    return [NSString stringWithFormat:@"%@ myStr is %@", [super showContent], self.myStr];
}
@end
