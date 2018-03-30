//
//  memenToCreateTaker.h
//  OCDesignModeExample
//
//  Created by mingwei on 2017/1/11.
//  Copyright © 2017年 mw. All rights reserved.
//

#import <Foundation/Foundation.h>

@class memenTo;

@interface memenToCreateTaker : NSObject
- (void)createMemto:(memenTo *)state;
- (memenTo *)getMemto;

@end
