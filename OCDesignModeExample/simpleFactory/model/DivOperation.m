//
//  DivOperation.m
//  OCDesignModeExample
//
//  Created by mingwei on 2017/3/5.
//  Copyright © 2017年 mw. All rights reserved.
//

#import "DivOperation.h"

@implementation DivOperation
- (CGFloat)getResult {
    if (fabs(self.b - 0.0f) < 0.000001) {
        return 0;
    }
    
    return self.a/self.b;
}

@end
