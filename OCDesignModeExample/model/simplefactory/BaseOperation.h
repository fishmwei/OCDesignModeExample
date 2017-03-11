//
//  BaseOperation.h
//  OCDesignModeExample
//
//  Created by mingwei on 2017/3/5.
//  Copyright © 2017年 mw. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BaseOperation : NSObject
@property (nonatomic, assign) CGFloat a;
@property (nonatomic, assign) CGFloat b;

- (CGFloat)getResult;

@end
