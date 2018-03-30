//
//  MediaCenter.m
//  OCDesignModeExample
//
//  Created by huangmingwei on 16/12/13.
//  Copyright © 2016年 mw. All rights reserved.
//

#import "MediaCenter.h"

@interface MediaCenter ()
@property (nonatomic, retain) NSMutableSet <id <MediaCollegeProtocol>> *listeners;
@end

@implementation MediaCenter
+(instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    static MediaCenter *instance = nil;
    dispatch_once(&onceToken, ^{
        instance = [[MediaCenter alloc] init];
    });
    
    return instance;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.listeners = [NSMutableSet set];
    }
    
    return self;
}

- (void)showText:(NSString *)text {
    for (id <MediaCollegeProtocol> item in self.listeners) {
        [item showText:text];
    }
}

- (void)addListener:(id <MediaCollegeProtocol>)listener {
    [self.listeners addObject:listener];
}

- (void)removeListener:(id <MediaCollegeProtocol>)listener {
    [self.listeners removeObject:listener];
}


@end
