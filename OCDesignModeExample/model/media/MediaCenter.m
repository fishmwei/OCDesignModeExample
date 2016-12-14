//
//  MediaCenter.m
//  OCDesignModeExample
//
//  Created by huangmingwei on 16/12/13.
//  Copyright © 2016年 mw. All rights reserved.
//

#import "MediaCenter.h"

@implementation MediaCenter
+(instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    static MediaCenter *instance = nil;
    dispatch_once(&onceToken, ^{
        instance = [[MediaCenter alloc] init];
    });
    
    return instance;
}

- (void)showText:(NSString *)text {
    
}
@end
