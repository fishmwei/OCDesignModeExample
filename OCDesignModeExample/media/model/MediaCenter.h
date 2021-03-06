//
//  MediaCenter.h
//  OCDesignModeExample
//
//  Created by huangmingwei on 16/12/13.
//  Copyright © 2016年 mw. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MediaCollegeProtocol.h"

@interface MediaCenter : NSObject <MediaCollegeProtocol>
+(instancetype)sharedInstance;

- (void)addListener:(id <MediaCollegeProtocol>)listener;
- (void)removeListener:(id <MediaCollegeProtocol>)listener;

@end
